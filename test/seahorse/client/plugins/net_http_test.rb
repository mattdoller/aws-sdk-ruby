# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'test_helper'

module Seahorse
  module Client
    module Plugins
      describe NetHttp do

        def config
          Configuration.new.tap do |config|
            NetHttp.new.add_options(config)
          end
        end

        describe '#add_options' do

          it 'adds a :http_proxy option without default' do
            config.http_proxy.must_equal(nil)
          end

          it 'adds a :http_open_timeout option with default' do
            config.http_open_timeout.must_equal(15)
          end

          it 'adds a :http_read_timeout option with default' do
            config.http_read_timeout.must_equal(60)
          end

          it 'adds a :http_idle_timeout option with default' do
            config.http_idle_timeout.must_equal(5)
          end

          it 'adds a :http_continue_timeout option with default' do
            config.http_continue_timeout.must_equal(1)
          end

          it 'adds a :http_wire_trace option with default' do
            config.http_wire_trace.must_equal(false)
          end

          it 'adds a :logger option without default' do
            config.logger.must_equal(nil)
          end

          it 'adds a :ssl_verify_peer option with default' do
            config.ssl_verify_peer.must_equal(true)
          end

          it 'adds a :ssl_ca_bundle option with default' do
            config.ssl_ca_bundle.must_equal(File.expand_path(File.join(
              File.dirname(__FILE__), '..', '..', '..', '..', 'ca-bundle-crt')))
          end

          it 'adds a :ssl_ca_directory option without default' do
            config.ssl_ca_directory.must_equal(nil)
          end

        end

        describe '#add_handlers' do

          it 'sets the :send hander to a NetHttp::Handler' do
            handlers = HandlerList.new
            NetHttp.new.add_handlers(handlers, config)
            handlers.to_a.must_equal([NetHttp::Handler])
          end

        end
      end
    end
  end
end

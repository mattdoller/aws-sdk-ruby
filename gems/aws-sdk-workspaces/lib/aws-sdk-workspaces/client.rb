# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:workspaces)

module Aws::WorkSpaces
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :workspaces

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates tags for a WorkSpace.
    #
    # @option params [required, String] :resource_id
    #   The resource ID of the request.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags of the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     resource_id: "NonEmptyString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Creates one or more WorkSpaces.
    #
    # <note markdown="1"> This operation is asynchronous and returns before the WorkSpaces are
    # created.
    #
    #  </note>
    #
    # @option params [required, Array<Types::WorkspaceRequest>] :workspaces
    #   An array of structures that specify the WorkSpaces to create.
    #
    # @return [Types::CreateWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedCreateWorkspaceRequest&gt;
    #   * {Types::CreateWorkspacesResult#pending_requests #pending_requests} => Array&lt;Types::Workspace&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspaces({
    #     workspaces: [ # required
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName", # required
    #         bundle_id: "BundleId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_request.directory_id #=> String
    #   resp.failed_requests[0].workspace_request.user_name #=> String
    #   resp.failed_requests[0].workspace_request.bundle_id #=> String
    #   resp.failed_requests[0].workspace_request.volume_encryption_key #=> String
    #   resp.failed_requests[0].workspace_request.user_volume_encryption_enabled #=> Boolean
    #   resp.failed_requests[0].workspace_request.root_volume_encryption_enabled #=> Boolean
    #   resp.failed_requests[0].workspace_request.workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.failed_requests[0].workspace_request.workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.failed_requests[0].workspace_request.tags #=> Array
    #   resp.failed_requests[0].workspace_request.tags[0].key #=> String
    #   resp.failed_requests[0].workspace_request.tags[0].value #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #   resp.pending_requests #=> Array
    #   resp.pending_requests[0].workspace_id #=> String
    #   resp.pending_requests[0].directory_id #=> String
    #   resp.pending_requests[0].user_name #=> String
    #   resp.pending_requests[0].ip_address #=> String
    #   resp.pending_requests[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "STOPPING", "STOPPED", "ERROR"
    #   resp.pending_requests[0].bundle_id #=> String
    #   resp.pending_requests[0].subnet_id #=> String
    #   resp.pending_requests[0].error_message #=> String
    #   resp.pending_requests[0].error_code #=> String
    #   resp.pending_requests[0].computer_name #=> String
    #   resp.pending_requests[0].volume_encryption_key #=> String
    #   resp.pending_requests[0].user_volume_encryption_enabled #=> Boolean
    #   resp.pending_requests[0].root_volume_encryption_enabled #=> Boolean
    #   resp.pending_requests[0].workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.pending_requests[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspaces AWS API Documentation
    #
    # @overload create_workspaces(params = {})
    # @param [Hash] params ({})
    def create_workspaces(params = {}, options = {})
      req = build_request(:create_workspaces, params)
      req.send_request(options)
    end

    # Deletes tags from a WorkSpace.
    #
    # @option params [required, String] :resource_id
    #   The resource ID of the request.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_id: "NonEmptyString", # required
    #     tag_keys: ["NonEmptyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Describes tags for a WorkSpace.
    #
    # @option params [required, String] :resource_id
    #   The resource ID of the request.
    #
    # @return [Types::DescribeTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResult#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Obtains information about the WorkSpace bundles that are available to
    # your account in the specified region.
    #
    # You can filter the results with either the `BundleIds` parameter, or
    # the `Owner` parameter, but not both.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `NextToken` response member contains a token that you pass in the next
    # call to this operation to retrieve the next set of items.
    #
    # @option params [Array<String>] :bundle_ids
    #   An array of strings that contains the identifiers of the bundles to
    #   retrieve. This parameter cannot be combined with any other filter
    #   parameter.
    #
    # @option params [String] :owner
    #   The owner of the bundles to retrieve. This parameter cannot be
    #   combined with any other filter parameter.
    #
    #   This contains one of the following values:
    #
    #   * null- Retrieves the bundles that belong to the account making the
    #     call.
    #
    #   * `AMAZON`- Retrieves the bundles that are provided by AWS.
    #
    # @option params [String] :next_token
    #   The `NextToken` value from a previous call to this operation. Pass
    #   null if this is the first call.
    #
    # @return [Types::DescribeWorkspaceBundlesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceBundlesResult#bundles #bundles} => Array&lt;Types::WorkspaceBundle&gt;
    #   * {Types::DescribeWorkspaceBundlesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_bundles({
    #     bundle_ids: ["BundleId"],
    #     owner: "BundleOwner",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].name #=> String
    #   resp.bundles[0].owner #=> String
    #   resp.bundles[0].description #=> String
    #   resp.bundles[0].user_storage.capacity #=> String
    #   resp.bundles[0].compute_type.name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundles AWS API Documentation
    #
    # @overload describe_workspace_bundles(params = {})
    # @param [Hash] params ({})
    def describe_workspace_bundles(params = {}, options = {})
      req = build_request(:describe_workspace_bundles, params)
      req.send_request(options)
    end

    # Retrieves information about the AWS Directory Service directories in
    # the region that are registered with Amazon WorkSpaces and are
    # available to your account.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `NextToken` response member contains a token that you pass in the next
    # call to this operation to retrieve the next set of items.
    #
    # @option params [Array<String>] :directory_ids
    #   An array of strings that contains the directory identifiers to
    #   retrieve information for. If this member is null, all directories are
    #   retrieved.
    #
    # @option params [String] :next_token
    #   The `NextToken` value from a previous call to this operation. Pass
    #   null if this is the first call.
    #
    # @return [Types::DescribeWorkspaceDirectoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceDirectoriesResult#directories #directories} => Array&lt;Types::WorkspaceDirectory&gt;
    #   * {Types::DescribeWorkspaceDirectoriesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_directories({
    #     directory_ids: ["DirectoryId"],
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.directories #=> Array
    #   resp.directories[0].directory_id #=> String
    #   resp.directories[0].alias #=> String
    #   resp.directories[0].directory_name #=> String
    #   resp.directories[0].registration_code #=> String
    #   resp.directories[0].subnet_ids #=> Array
    #   resp.directories[0].subnet_ids[0] #=> String
    #   resp.directories[0].dns_ip_addresses #=> Array
    #   resp.directories[0].dns_ip_addresses[0] #=> String
    #   resp.directories[0].customer_user_name #=> String
    #   resp.directories[0].iam_role_id #=> String
    #   resp.directories[0].directory_type #=> String, one of "SIMPLE_AD", "AD_CONNECTOR"
    #   resp.directories[0].workspace_security_group_id #=> String
    #   resp.directories[0].state #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"
    #   resp.directories[0].workspace_creation_properties.enable_work_docs #=> Boolean
    #   resp.directories[0].workspace_creation_properties.enable_internet_access #=> Boolean
    #   resp.directories[0].workspace_creation_properties.default_ou #=> String
    #   resp.directories[0].workspace_creation_properties.custom_security_group_id #=> String
    #   resp.directories[0].workspace_creation_properties.user_enabled_as_local_administrator #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectories AWS API Documentation
    #
    # @overload describe_workspace_directories(params = {})
    # @param [Hash] params ({})
    def describe_workspace_directories(params = {}, options = {})
      req = build_request(:describe_workspace_directories, params)
      req.send_request(options)
    end

    # Obtains information about the specified WorkSpaces.
    #
    # Only one of the filter parameters, such as `BundleId`, `DirectoryId`,
    # or `WorkspaceIds`, can be specified at a time.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `NextToken` response member contains a token that you pass in the next
    # call to this operation to retrieve the next set of items.
    #
    # @option params [Array<String>] :workspace_ids
    #   An array of strings that contain the identifiers of the WorkSpaces for
    #   which to retrieve information. This parameter cannot be combined with
    #   any other filter parameter.
    #
    #   Because the CreateWorkspaces operation is asynchronous, the identifier
    #   it returns is not immediately available. If you immediately call
    #   DescribeWorkspaces with this identifier, no information is returned.
    #
    # @option params [String] :directory_id
    #   Specifies the directory identifier to which to limit the WorkSpaces.
    #   Optionally, you can specify a specific directory user with the
    #   `UserName` parameter. This parameter cannot be combined with any other
    #   filter parameter.
    #
    # @option params [String] :user_name
    #   Used with the `DirectoryId` parameter to specify the directory user
    #   for whom to obtain the WorkSpace.
    #
    # @option params [String] :bundle_id
    #   The identifier of a bundle to obtain the WorkSpaces for. All
    #   WorkSpaces that are created from this bundle will be retrieved. This
    #   parameter cannot be combined with any other filter parameter.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   The `NextToken` value from a previous call to this operation. Pass
    #   null if this is the first call.
    #
    # @return [Types::DescribeWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesResult#workspaces #workspaces} => Array&lt;Types::Workspace&gt;
    #   * {Types::DescribeWorkspacesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces({
    #     workspace_ids: ["WorkspaceId"],
    #     directory_id: "DirectoryId",
    #     user_name: "UserName",
    #     bundle_id: "BundleId",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces #=> Array
    #   resp.workspaces[0].workspace_id #=> String
    #   resp.workspaces[0].directory_id #=> String
    #   resp.workspaces[0].user_name #=> String
    #   resp.workspaces[0].ip_address #=> String
    #   resp.workspaces[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "STOPPING", "STOPPED", "ERROR"
    #   resp.workspaces[0].bundle_id #=> String
    #   resp.workspaces[0].subnet_id #=> String
    #   resp.workspaces[0].error_message #=> String
    #   resp.workspaces[0].error_code #=> String
    #   resp.workspaces[0].computer_name #=> String
    #   resp.workspaces[0].volume_encryption_key #=> String
    #   resp.workspaces[0].user_volume_encryption_enabled #=> Boolean
    #   resp.workspaces[0].root_volume_encryption_enabled #=> Boolean
    #   resp.workspaces[0].workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.workspaces[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaces AWS API Documentation
    #
    # @overload describe_workspaces(params = {})
    # @param [Hash] params ({})
    def describe_workspaces(params = {}, options = {})
      req = build_request(:describe_workspaces, params)
      req.send_request(options)
    end

    # Describes the connection status of a specified WorkSpace.
    #
    # @option params [Array<String>] :workspace_ids
    #   An array of strings that contain the identifiers of the WorkSpaces.
    #
    # @option params [String] :next_token
    #   The next token of the request.
    #
    # @return [Types::DescribeWorkspacesConnectionStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesConnectionStatusResult#workspaces_connection_status #workspaces_connection_status} => Array&lt;Types::WorkspaceConnectionStatus&gt;
    #   * {Types::DescribeWorkspacesConnectionStatusResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces_connection_status({
    #     workspace_ids: ["WorkspaceId"],
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces_connection_status #=> Array
    #   resp.workspaces_connection_status[0].workspace_id #=> String
    #   resp.workspaces_connection_status[0].connection_state #=> String, one of "CONNECTED", "DISCONNECTED", "UNKNOWN"
    #   resp.workspaces_connection_status[0].connection_state_check_timestamp #=> Time
    #   resp.workspaces_connection_status[0].last_known_user_connection_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatus AWS API Documentation
    #
    # @overload describe_workspaces_connection_status(params = {})
    # @param [Hash] params ({})
    def describe_workspaces_connection_status(params = {}, options = {})
      req = build_request(:describe_workspaces_connection_status, params)
      req.send_request(options)
    end

    # Modifies the WorkSpace properties, including the running mode and
    # AutoStop time.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the WorkSpace.
    #
    # @option params [required, Types::WorkspaceProperties] :workspace_properties
    #   The WorkSpace properties of the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_properties({
    #     workspace_id: "WorkspaceId", # required
    #     workspace_properties: { # required
    #       running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #       running_mode_auto_stop_timeout_in_minutes: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceProperties AWS API Documentation
    #
    # @overload modify_workspace_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_properties(params = {}, options = {})
      req = build_request(:modify_workspace_properties, params)
      req.send_request(options)
    end

    # Reboots the specified WorkSpaces.
    #
    # To be able to reboot a WorkSpace, the WorkSpace must have a **State**
    # of `AVAILABLE`, `IMPAIRED`, or `INOPERABLE`.
    #
    # <note markdown="1"> This operation is asynchronous and returns before the WorkSpaces have
    # rebooted.
    #
    #  </note>
    #
    # @option params [required, Array<Types::RebootRequest>] :reboot_workspace_requests
    #   An array of structures that specify the WorkSpaces to reboot.
    #
    # @return [Types::RebootWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_workspaces({
    #     reboot_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspaces AWS API Documentation
    #
    # @overload reboot_workspaces(params = {})
    # @param [Hash] params ({})
    def reboot_workspaces(params = {}, options = {})
      req = build_request(:reboot_workspaces, params)
      req.send_request(options)
    end

    # Rebuilds the specified WorkSpaces.
    #
    # Rebuilding a WorkSpace is a potentially destructive action that can
    # result in the loss of data. Rebuilding a WorkSpace causes the
    # following to occur:
    #
    # * The system is restored to the image of the bundle that the WorkSpace
    #   is created from. Any applications that have been installed, or
    #   system settings that have been made since the WorkSpace was created
    #   will be lost.
    #
    # * The data drive (D drive) is re-created from the last automatic
    #   snapshot taken of the data drive. The current contents of the data
    #   drive are overwritten. Automatic snapshots of the data drive are
    #   taken every 12 hours, so the snapshot can be as much as 12 hours
    #   old.
    #
    # To be able to rebuild a WorkSpace, the WorkSpace must have a **State**
    # of `AVAILABLE` or `ERROR`.
    #
    # <note markdown="1"> This operation is asynchronous and returns before the WorkSpaces have
    # been completely rebuilt.
    #
    #  </note>
    #
    # @option params [required, Array<Types::RebuildRequest>] :rebuild_workspace_requests
    #   An array of structures that specify the WorkSpaces to rebuild.
    #
    # @return [Types::RebuildWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebuildWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebuild_workspaces({
    #     rebuild_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspaces AWS API Documentation
    #
    # @overload rebuild_workspaces(params = {})
    # @param [Hash] params ({})
    def rebuild_workspaces(params = {}, options = {})
      req = build_request(:rebuild_workspaces, params)
      req.send_request(options)
    end

    # Starts the specified WorkSpaces. The WorkSpaces must have a running
    # mode of AutoStop and a state of STOPPED.
    #
    # @option params [required, Array<Types::StartRequest>] :start_workspace_requests
    #   The requests.
    #
    # @return [Types::StartWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workspaces({
    #     start_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspaces AWS API Documentation
    #
    # @overload start_workspaces(params = {})
    # @param [Hash] params ({})
    def start_workspaces(params = {}, options = {})
      req = build_request(:start_workspaces, params)
      req.send_request(options)
    end

    # Stops the specified WorkSpaces. The WorkSpaces must have a running
    # mode of AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or
    # ERROR.
    #
    # @option params [required, Array<Types::StopRequest>] :stop_workspace_requests
    #   The requests.
    #
    # @return [Types::StopWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workspaces({
    #     stop_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspaces AWS API Documentation
    #
    # @overload stop_workspaces(params = {})
    # @param [Hash] params ({})
    def stop_workspaces(params = {}, options = {})
      req = build_request(:stop_workspaces, params)
      req.send_request(options)
    end

    # Terminates the specified WorkSpaces.
    #
    # Terminating a WorkSpace is a permanent action and cannot be undone.
    # The user's data is not maintained and will be destroyed. If you need
    # to archive any user data, contact Amazon Web Services before
    # terminating the WorkSpace.
    #
    # You can terminate a WorkSpace that is in any state except `SUSPENDED`.
    #
    # <note markdown="1"> This operation is asynchronous and returns before the WorkSpaces have
    # been completely terminated.
    #
    #  </note>
    #
    # @option params [required, Array<Types::TerminateRequest>] :terminate_workspace_requests
    #   An array of structures that specify the WorkSpaces to terminate.
    #
    # @return [Types::TerminateWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workspaces({
    #     terminate_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspaces AWS API Documentation
    #
    # @overload terminate_workspaces(params = {})
    # @param [Hash] params ({})
    def terminate_workspaces(params = {}, options = {})
      req = build_request(:terminate_workspaces, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-workspaces'
      context[:gem_version] = '1.0.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end

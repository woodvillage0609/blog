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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kafka)

module Aws::Kafka
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kafka

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new MSK cluster.
    #
    # @option params [required, Types::BrokerNodeGroupInfo] :broker_node_group_info
    #   Information about the broker nodes in the cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster.
    #
    # @option params [Types::EncryptionInfo] :encryption_info
    #   Includes all encryption-related information.
    #
    # @option params [String] :enhanced_monitoring
    #   Specifies the level of monitoring for the MSK cluster. The possible
    #   values are DEFAULT, PER\_BROKER, and PER\_TOPIC\_PER\_BROKER.
    #
    # @option params [required, String] :kafka_version
    #   The version of Apache Kafka.
    #
    # @option params [required, Integer] :number_of_broker_nodes
    #   The number of Kafka broker nodes in the Amazon MSK cluster.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster_arn #cluster_arn} => String
    #   * {Types::CreateClusterResponse#cluster_name #cluster_name} => String
    #   * {Types::CreateClusterResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     broker_node_group_info: { # required
    #       broker_az_distribution: "DEFAULT", # accepts DEFAULT
    #       client_subnets: ["__string"], # required
    #       instance_type: "__stringMin5Max32", # required
    #       security_groups: ["__string"],
    #       storage_info: {
    #         ebs_storage_info: {
    #           volume_size: 1,
    #         },
    #       },
    #     },
    #     cluster_name: "__stringMin1Max64", # required
    #     encryption_info: {
    #       encryption_at_rest: {
    #         data_volume_kms_key_id: "__string", # required
    #       },
    #     },
    #     enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #     kafka_version: "__stringMin1Max128", # required
    #     number_of_broker_nodes: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_name #=> String
    #   resp.state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in
    # the request.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [String] :current_version
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster_arn #cluster_arn} => String
    #   * {Types::DeleteClusterResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_arn: "__string", # required
    #     current_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Returns a description of the MSK cluster whose Amazon Resource Name
    # (ARN) is specified in the request.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::DescribeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResponse#cluster_info #cluster_info} => Types::ClusterInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_info.broker_node_group_info.broker_az_distribution #=> String, one of "DEFAULT"
    #   resp.cluster_info.broker_node_group_info.client_subnets #=> Array
    #   resp.cluster_info.broker_node_group_info.client_subnets[0] #=> String
    #   resp.cluster_info.broker_node_group_info.instance_type #=> String
    #   resp.cluster_info.broker_node_group_info.security_groups #=> Array
    #   resp.cluster_info.broker_node_group_info.security_groups[0] #=> String
    #   resp.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.cluster_info.cluster_arn #=> String
    #   resp.cluster_info.cluster_name #=> String
    #   resp.cluster_info.creation_time #=> Time
    #   resp.cluster_info.current_broker_software_info.configuration_arn #=> String
    #   resp.cluster_info.current_broker_software_info.configuration_revision #=> String
    #   resp.cluster_info.current_broker_software_info.kafka_version #=> String
    #   resp.cluster_info.current_version #=> String
    #   resp.cluster_info.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_info.state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #   resp.cluster_info.zookeeper_connect_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # A list of brokers that a client application can use to bootstrap.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::GetBootstrapBrokersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBootstrapBrokersResponse#bootstrap_broker_string #bootstrap_broker_string} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bootstrap_brokers({
    #     cluster_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bootstrap_broker_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokers AWS API Documentation
    #
    # @overload get_bootstrap_brokers(params = {})
    # @param [Hash] params ({})
    def get_bootstrap_brokers(params = {}, options = {})
      req = build_request(:get_bootstrap_brokers, params)
      req.send_request(options)
    end

    # Returns a list of clusters in an account.
    #
    # @option params [String] :cluster_name_filter
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#cluster_info_list #cluster_info_list} => Array&lt;Types::ClusterInfo&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     cluster_name_filter: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_info_list #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.broker_az_distribution #=> String, one of "DEFAULT"
    #   resp.cluster_info_list[0].broker_node_group_info.client_subnets #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.client_subnets[0] #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.instance_type #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.security_groups #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.security_groups[0] #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.cluster_info_list[0].cluster_arn #=> String
    #   resp.cluster_info_list[0].cluster_name #=> String
    #   resp.cluster_info_list[0].creation_time #=> Time
    #   resp.cluster_info_list[0].current_broker_software_info.configuration_arn #=> String
    #   resp.cluster_info_list[0].current_broker_software_info.configuration_revision #=> String
    #   resp.cluster_info_list[0].current_broker_software_info.kafka_version #=> String
    #   resp.cluster_info_list[0].current_version #=> String
    #   resp.cluster_info_list[0].encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.cluster_info_list[0].enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_info_list[0].number_of_broker_nodes #=> Integer
    #   resp.cluster_info_list[0].state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #   resp.cluster_info_list[0].zookeeper_connect_string #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Returns a list of the broker nodes in the cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodesResponse#next_token #next_token} => String
    #   * {Types::ListNodesResponse#node_info_list #node_info_list} => Array&lt;Types::NodeInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes({
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.node_info_list #=> Array
    #   resp.node_info_list[0].added_to_cluster_time #=> String
    #   resp.node_info_list[0].broker_node_info.attached_eni_id #=> String
    #   resp.node_info_list[0].broker_node_info.broker_id #=> Float
    #   resp.node_info_list[0].broker_node_info.client_subnet #=> String
    #   resp.node_info_list[0].broker_node_info.client_vpc_ip_address #=> String
    #   resp.node_info_list[0].broker_node_info.current_broker_software_info.configuration_arn #=> String
    #   resp.node_info_list[0].broker_node_info.current_broker_software_info.configuration_revision #=> String
    #   resp.node_info_list[0].broker_node_info.current_broker_software_info.kafka_version #=> String
    #   resp.node_info_list[0].instance_type #=> String
    #   resp.node_info_list[0].node_arn #=> String
    #   resp.node_info_list[0].node_type #=> String, one of "BROKER"
    #   resp.node_info_list[0].zookeeper_node_info.attached_eni_id #=> String
    #   resp.node_info_list[0].zookeeper_node_info.client_vpc_ip_address #=> String
    #   resp.node_info_list[0].zookeeper_node_info.zookeeper_id #=> Float
    #   resp.node_info_list[0].zookeeper_node_info.zookeeper_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListNodes AWS API Documentation
    #
    # @overload list_nodes(params = {})
    # @param [Hash] params ({})
    def list_nodes(params = {}, options = {})
      req = build_request(:list_nodes, params)
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
      context[:gem_name] = 'aws-sdk-kafka'
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

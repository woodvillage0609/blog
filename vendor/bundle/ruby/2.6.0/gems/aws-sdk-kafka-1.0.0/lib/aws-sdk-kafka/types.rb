# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka
  module Types

    # Describes the setup to be used for Kafka broker nodes in the cluster.
    #
    # @note When making an API call, you may pass BrokerNodeGroupInfo
    #   data as a hash:
    #
    #       {
    #         broker_az_distribution: "DEFAULT", # accepts DEFAULT
    #         client_subnets: ["__string"], # required
    #         instance_type: "__stringMin5Max32", # required
    #         security_groups: ["__string"],
    #         storage_info: {
    #           ebs_storage_info: {
    #             volume_size: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] broker_az_distribution
    #   The distribution of broker nodes across Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] client_subnets
    #   The list of subnets to connect to in the client virtual private
    #   cloud (VPC). AWS creates elastic network interfaces inside these
    #   subnets. Client applications use elastic network interfaces to
    #   produce and consume data. Client subnets can't be in Availability
    #   Zone us-east-1e.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
    #   The type of Amazon EC2 instances to use for Kafka brokers. The
    #   following instance types are allowed: kafka.m5.large,
    #   kafka.m5.xlarge, kafka.m5.2xlarge, kafka.m5.4xlarge,
    #   kafka.m5.12xlarge, and kafka.m5.24xlarge.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The AWS security groups to associate with the elastic network
    #   interfaces in order to specify who can connect to and communicate
    #   with the Amazon MSK cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_info
    #   Contains information about storage volumes attached to MSK broker
    #   nodes.
    #   @return [Types::StorageInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerNodeGroupInfo AWS API Documentation
    #
    class BrokerNodeGroupInfo < Struct.new(
      :broker_az_distribution,
      :client_subnets,
      :instance_type,
      :security_groups,
      :storage_info)
      include Aws::Structure
    end

    # BrokerNodeInfo
    #
    # @!attribute [rw] attached_eni_id
    #   The attached elastic network interface of the broker.
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   The ID of the broker.
    #   @return [Float]
    #
    # @!attribute [rw] client_subnet
    #   The client subnet to which this broker node belongs.
    #   @return [String]
    #
    # @!attribute [rw] client_vpc_ip_address
    #   The virtual private cloud (VPC) of the client.
    #   @return [String]
    #
    # @!attribute [rw] current_broker_software_info
    #   Information about the version of software currently deployed on the
    #   Kafka brokers in the cluster.
    #   @return [Types::BrokerSoftwareInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerNodeInfo AWS API Documentation
    #
    class BrokerNodeInfo < Struct.new(
      :attached_eni_id,
      :broker_id,
      :client_subnet,
      :client_vpc_ip_address,
      :current_broker_software_info)
      include Aws::Structure
    end

    # Information about the current software installed on the cluster.
    #
    # @!attribute [rw] configuration_arn
    #   The Amazon Resource Name (ARN) of the configuration used for the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] configuration_revision
    #   The revision of the configuration to use.
    #   @return [String]
    #
    # @!attribute [rw] kafka_version
    #   The version of Apache Kafka.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerSoftwareInfo AWS API Documentation
    #
    class BrokerSoftwareInfo < Struct.new(
      :configuration_arn,
      :configuration_revision,
      :kafka_version)
      include Aws::Structure
    end

    # Returns information about a cluster.
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the broker nodes.
    #   @return [Types::BrokerNodeGroupInfo]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_broker_software_info
    #   Information about the version of software currently deployed on the
    #   Kafka brokers in the cluster.
    #   @return [Types::BrokerSoftwareInfo]
    #
    # @!attribute [rw] current_version
    #   The current version of the MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies which metrics are gathered for the MSK cluster. This
    #   property has three possible values: DEFAULT, PER\_BROKER, and
    #   PER\_TOPIC\_PER\_BROKER.
    #   @return [String]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of Kafka broker nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are CREATING, ACTIVE,
    #   and FAILED.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_connect_string
    #   The connection string to use to connect to the Apache ZooKeeper
    #   cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterInfo AWS API Documentation
    #
    class ClusterInfo < Struct.new(
      :broker_node_group_info,
      :cluster_arn,
      :cluster_name,
      :creation_time,
      :current_broker_software_info,
      :current_version,
      :encryption_info,
      :enhanced_monitoring,
      :number_of_broker_nodes,
      :state,
      :zookeeper_connect_string)
      include Aws::Structure
    end

    # Creates a cluster.
    #
    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         broker_node_group_info: { # required
    #           broker_az_distribution: "DEFAULT", # accepts DEFAULT
    #           client_subnets: ["__string"], # required
    #           instance_type: "__stringMin5Max32", # required
    #           security_groups: ["__string"],
    #           storage_info: {
    #             ebs_storage_info: {
    #               volume_size: 1,
    #             },
    #           },
    #         },
    #         cluster_name: "__stringMin1Max64", # required
    #         encryption_info: {
    #           encryption_at_rest: {
    #             data_volume_kms_key_id: "__string", # required
    #           },
    #         },
    #         enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #         kafka_version: "__stringMin1Max128", # required
    #         number_of_broker_nodes: 1, # required
    #       }
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the broker nodes in the cluster.
    #   @return [Types::BrokerNodeGroupInfo]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies the level of monitoring for the MSK cluster. The possible
    #   values are DEFAULT, PER\_BROKER, and PER\_TOPIC\_PER\_BROKER.
    #   @return [String]
    #
    # @!attribute [rw] kafka_version
    #   The version of Apache Kafka.
    #   @return [String]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of Kafka broker nodes in the Amazon MSK cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :broker_node_group_info,
      :cluster_name,
      :encryption_info,
      :enhanced_monitoring,
      :kafka_version,
      :number_of_broker_nodes)
      include Aws::Structure
    end

    # Returns information about the created cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are CREATING, ACTIVE,
    #   and FAILED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster_arn,
      :cluster_name,
      :state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         current_version: "__string",
    #       }
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster_arn,
      :current_version)
      include Aws::Structure
    end

    # Returns information about the deleted cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are CREATING, ACTIVE,
    #   and FAILED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster_arn,
      :state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :cluster_arn)
      include Aws::Structure
    end

    # Returns information about a cluster.
    #
    # @!attribute [rw] cluster_info
    #   The cluster information.
    #   @return [Types::ClusterInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterResponse AWS API Documentation
    #
    class DescribeClusterResponse < Struct.new(
      :cluster_info)
      include Aws::Structure
    end

    # Contains information about the EBS storage volumes attached to Kafka
    # broker nodes.
    #
    # @note When making an API call, you may pass EBSStorageInfo
    #   data as a hash:
    #
    #       {
    #         volume_size: 1,
    #       }
    #
    # @!attribute [rw] volume_size
    #   The size in GiB of the EBS volume for the data drive on each broker
    #   node.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EBSStorageInfo AWS API Documentation
    #
    class EBSStorageInfo < Struct.new(
      :volume_size)
      include Aws::Structure
    end

    # The data volume encryption details.
    #
    # @note When making an API call, you may pass EncryptionAtRest
    #   data as a hash:
    #
    #       {
    #         data_volume_kms_key_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data_volume_kms_key_id
    #   The AWS KMS key used for data encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EncryptionAtRest AWS API Documentation
    #
    class EncryptionAtRest < Struct.new(
      :data_volume_kms_key_id)
      include Aws::Structure
    end

    # Includes encryption-related information, such as the AWS KMS key used
    # for encrypting data at rest.
    #
    # @note When making an API call, you may pass EncryptionInfo
    #   data as a hash:
    #
    #       {
    #         encryption_at_rest: {
    #           data_volume_kms_key_id: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] encryption_at_rest
    #   The data volume encryption details.
    #   @return [Types::EncryptionAtRest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EncryptionInfo AWS API Documentation
    #
    class EncryptionInfo < Struct.new(
      :encryption_at_rest)
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   The parameter that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Error AWS API Documentation
    #
    class Error < Struct.new(
      :invalid_parameter,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBootstrapBrokersRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokersRequest AWS API Documentation
    #
    class GetBootstrapBrokersRequest < Struct.new(
      :cluster_arn)
      include Aws::Structure
    end

    # Returns a string containing one or more hostname:port pairs.
    #
    # @!attribute [rw] bootstrap_broker_string
    #   A string containing one or more hostname:port pairs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokersResponse AWS API Documentation
    #
    class GetBootstrapBrokersResponse < Struct.new(
      :bootstrap_broker_string)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name_filter: "__string",
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] cluster_name_filter
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :cluster_name_filter,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # The response contains an array containing cluster information and a
    # next token if the response is truncated.
    #
    # @!attribute [rw] cluster_info_list
    #   Information on each of the MSK clusters in the response.
    #   @return [Array<Types::ClusterInfo>]
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of a ListClusters
    #   operation is truncated, the call returns NextToken in the response.
    #   To get another batch of clusters, provide this token in your next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :cluster_info_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNodesRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListNodesRequest AWS API Documentation
    #
    class ListNodesRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Information about nodes in the cluster.
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of a ListNodes
    #   operation is truncated, the call returns NextToken in the response.
    #   To get another batch of nodes, provide this token in your next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] node_info_list
    #   List containing a NodeInfo object.
    #   @return [Array<Types::NodeInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListNodesResponse AWS API Documentation
    #
    class ListNodesResponse < Struct.new(
      :next_token,
      :node_info_list)
      include Aws::Structure
    end

    # The node information object.
    #
    # @!attribute [rw] added_to_cluster_time
    #   The start time.
    #   @return [String]
    #
    # @!attribute [rw] broker_node_info
    #   The broker node info.
    #   @return [Types::BrokerNodeInfo]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] node_arn
    #   The Amazon Resource Name (ARN) of the node.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_node_info
    #   The ZookeeperNodeInfo.
    #   @return [Types::ZookeeperNodeInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/NodeInfo AWS API Documentation
    #
    class NodeInfo < Struct.new(
      :added_to_cluster_time,
      :broker_node_info,
      :instance_type,
      :node_arn,
      :node_type,
      :zookeeper_node_info)
      include Aws::Structure
    end

    # Contains information about storage volumes attached to MSK broker
    # nodes.
    #
    # @note When making an API call, you may pass StorageInfo
    #   data as a hash:
    #
    #       {
    #         ebs_storage_info: {
    #           volume_size: 1,
    #         },
    #       }
    #
    # @!attribute [rw] ebs_storage_info
    #   EBS volume information.
    #   @return [Types::EBSStorageInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/StorageInfo AWS API Documentation
    #
    class StorageInfo < Struct.new(
      :ebs_storage_info)
      include Aws::Structure
    end

    # Zookeeper node information.
    #
    # @!attribute [rw] attached_eni_id
    #   The attached elastic network interface of the broker.
    #   @return [String]
    #
    # @!attribute [rw] client_vpc_ip_address
    #   The virtual private cloud (VPC) IP address of the client.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_id
    #   The role-specific ID for Zookeeper.
    #   @return [Float]
    #
    # @!attribute [rw] zookeeper_version
    #   The version of Zookeeper.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ZookeeperNodeInfo AWS API Documentation
    #
    class ZookeeperNodeInfo < Struct.new(
      :attached_eni_id,
      :client_vpc_ip_address,
      :zookeeper_id,
      :zookeeper_version)
      include Aws::Structure
    end

  end
end

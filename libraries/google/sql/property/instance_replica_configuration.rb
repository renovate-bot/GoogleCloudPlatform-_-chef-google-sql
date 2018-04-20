# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

module Google
  module Sql
    module Data
      # A class to manage data for replica_configuration for instance.
      class InstancReplicaConfigu
        include Comparable

        attr_reader :failover_target
        attr_reader :mysql_replica_configuration
        attr_reader :replica_names
        attr_reader :service_account_email_address

        def to_json(_arg = nil)
          {
            'failoverTarget' => failover_target,
            'mysqlReplicaConfiguration' => mysql_replica_configuration,
            'replicaNames' => replica_names,
            'serviceAccountEmailAddress' => service_account_email_address
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            failover_target: failover_target.to_s,
            mysql_replica_configuration: mysql_replica_configuration.to_s,
            replica_names: replica_names.to_s,
            service_account_email_address: service_account_email_address.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? InstancReplicaConfigu
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? InstancReplicaConfigu
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        def compare_fields(other)
          [
            { self: failover_target, other: other.failover_target },
            {
              self: mysql_replica_configuration,
              other: other.mysql_replica_configuration
            },
            { self: replica_names, other: other.replica_names },
            {
              self: service_account_email_address,
              other: other.service_account_email_address
            }
          ]
        end
      end

      # Manages a InstancReplicaConfigu nested object
      # Data is coming from the GCP API
      class InstancReplicaConfiguApi < InstancReplicaConfigu
        def initialize(args)
          @failover_target =
            Google::Sql::Property::Boolean.api_parse(args['failoverTarget'])
          @mysql_replica_configuration =
            Google::Sql::Property::InstaMysqlRepliConfi.api_parse(
              args['mysqlReplicaConfiguration']
            )
          @replica_names =
            Google::Sql::Property::StringArray.api_parse(args['replicaNames'])
          @service_account_email_address =
            Google::Sql::Property::String.api_parse(
              args['serviceAccountEmailAddress']
            )
        end
      end

      # Manages a InstancReplicaConfigu nested object
      # Data is coming from the Chef catalog
      class InstancReplicaConfiguCatalog < InstancReplicaConfigu
        def initialize(args)
          @failover_target =
            Google::Sql::Property::Boolean.catalog_parse(args[:failover_target])
          @mysql_replica_configuration =
            Google::Sql::Property::InstaMysqlRepliConfi.catalog_parse(
              args[:mysql_replica_configuration]
            )
          @replica_names = Google::Sql::Property::StringArray.catalog_parse(
            args[:replica_names]
          )
          @service_account_email_address =
            Google::Sql::Property::String.catalog_parse(
              args[:service_account_email_address]
            )
        end
      end
    end

    module Property
      # A class to manage input to replica_configuration for instance.
      class InstancReplicaConfigu
        def self.coerce
          lambda do |x|
            ::Google::Sql::Property::InstancReplicaConfigu.catalog_parse(x)
          end
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstancReplicaConfigu
          Data::InstancReplicaConfiguCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstancReplicaConfigu
          Data::InstancReplicaConfiguApi.new(value)
        end
      end
    end
  end
end

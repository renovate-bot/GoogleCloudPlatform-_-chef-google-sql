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

require 'google/sql/property/array'

module Google
  module Sql
    module Property
      # A class to handle serialization of Array items.
      class StringArray < Google::Sql::Property::Array
        def self.coerce
          ->(x) { ::Google::Sql::Property::StringArray.catalog_parse(x) }
        end

        def self.api_parse(value)
          value
        end

        def self.catalog_parse(value)
          value
        end

        def self.validate(value)
          return if value.nil? || value.is_a?(::String)
          unless value.is_a? ::Array
            raise "Expected string but found #{value.class} instead: #{value}"
          end
          value.each { |v| validate v }
        end
      end
    end
  end
end

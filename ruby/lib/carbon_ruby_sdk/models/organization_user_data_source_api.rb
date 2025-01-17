=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Carbon
  class OrganizationUserDataSourceAPI
    attr_accessor :tags

    attr_accessor :id

    attr_accessor :data_source_external_id

    attr_accessor :data_source_type

    attr_accessor :token

    attr_accessor :sync_status

    attr_accessor :source_items_synced_at

    attr_accessor :organization_user_id

    attr_accessor :organization_id

    attr_accessor :organization_supplied_user_id

    attr_accessor :revoked_access

    attr_accessor :last_synced_at

    attr_accessor :last_sync_action

    attr_accessor :enable_auto_sync

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :files_synced_at

    attr_accessor :data_source_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tags' => :'tags',
        :'id' => :'id',
        :'data_source_external_id' => :'data_source_external_id',
        :'data_source_type' => :'data_source_type',
        :'token' => :'token',
        :'sync_status' => :'sync_status',
        :'source_items_synced_at' => :'source_items_synced_at',
        :'organization_user_id' => :'organization_user_id',
        :'organization_id' => :'organization_id',
        :'organization_supplied_user_id' => :'organization_supplied_user_id',
        :'revoked_access' => :'revoked_access',
        :'last_synced_at' => :'last_synced_at',
        :'last_sync_action' => :'last_sync_action',
        :'enable_auto_sync' => :'enable_auto_sync',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'files_synced_at' => :'files_synced_at',
        :'data_source_metadata' => :'data_source_metadata'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tags' => :'Object',
        :'id' => :'Integer',
        :'data_source_external_id' => :'String',
        :'data_source_type' => :'DataSourceType',
        :'token' => :'Object',
        :'sync_status' => :'DataSourceSyncStatuses',
        :'source_items_synced_at' => :'Time',
        :'organization_user_id' => :'Integer',
        :'organization_id' => :'Integer',
        :'organization_supplied_user_id' => :'String',
        :'revoked_access' => :'Boolean',
        :'last_synced_at' => :'Time',
        :'last_sync_action' => :'DataSourceLastSyncActions',
        :'enable_auto_sync' => :'Boolean',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'files_synced_at' => :'Time',
        :'data_source_metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'data_source_external_id',
        :'token',
        :'source_items_synced_at',
        :'enable_auto_sync',
        :'files_synced_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Carbon::OrganizationUserDataSourceAPI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Carbon::OrganizationUserDataSourceAPI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'data_source_external_id')
        self.data_source_external_id = attributes[:'data_source_external_id']
      end

      if attributes.key?(:'data_source_type')
        self.data_source_type = attributes[:'data_source_type']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'sync_status')
        self.sync_status = attributes[:'sync_status']
      end

      if attributes.key?(:'source_items_synced_at')
        self.source_items_synced_at = attributes[:'source_items_synced_at']
      end

      if attributes.key?(:'organization_user_id')
        self.organization_user_id = attributes[:'organization_user_id']
      end

      if attributes.key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.key?(:'organization_supplied_user_id')
        self.organization_supplied_user_id = attributes[:'organization_supplied_user_id']
      end

      if attributes.key?(:'revoked_access')
        self.revoked_access = attributes[:'revoked_access']
      end

      if attributes.key?(:'last_synced_at')
        self.last_synced_at = attributes[:'last_synced_at']
      end

      if attributes.key?(:'last_sync_action')
        self.last_sync_action = attributes[:'last_sync_action']
      end

      if attributes.key?(:'enable_auto_sync')
        self.enable_auto_sync = attributes[:'enable_auto_sync']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'files_synced_at')
        self.files_synced_at = attributes[:'files_synced_at']
      end

      if attributes.key?(:'data_source_metadata')
        self.data_source_metadata = attributes[:'data_source_metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @tags.nil?
        invalid_properties.push('invalid value for "tags", tags cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @data_source_type.nil?
        invalid_properties.push('invalid value for "data_source_type", data_source_type cannot be nil.')
      end

      if @sync_status.nil?
        invalid_properties.push('invalid value for "sync_status", sync_status cannot be nil.')
      end

      if @organization_user_id.nil?
        invalid_properties.push('invalid value for "organization_user_id", organization_user_id cannot be nil.')
      end

      if @organization_id.nil?
        invalid_properties.push('invalid value for "organization_id", organization_id cannot be nil.')
      end

      if @organization_supplied_user_id.nil?
        invalid_properties.push('invalid value for "organization_supplied_user_id", organization_supplied_user_id cannot be nil.')
      end

      if @revoked_access.nil?
        invalid_properties.push('invalid value for "revoked_access", revoked_access cannot be nil.')
      end

      if @last_synced_at.nil?
        invalid_properties.push('invalid value for "last_synced_at", last_synced_at cannot be nil.')
      end

      if @last_sync_action.nil?
        invalid_properties.push('invalid value for "last_sync_action", last_sync_action cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @data_source_metadata.nil?
        invalid_properties.push('invalid value for "data_source_metadata", data_source_metadata cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @tags.nil?
      return false if @id.nil?
      return false if @data_source_type.nil?
      return false if @sync_status.nil?
      return false if @organization_user_id.nil?
      return false if @organization_id.nil?
      return false if @organization_supplied_user_id.nil?
      return false if @revoked_access.nil?
      return false if @last_synced_at.nil?
      return false if @last_sync_action.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @data_source_metadata.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tags == o.tags &&
          id == o.id &&
          data_source_external_id == o.data_source_external_id &&
          data_source_type == o.data_source_type &&
          token == o.token &&
          sync_status == o.sync_status &&
          source_items_synced_at == o.source_items_synced_at &&
          organization_user_id == o.organization_user_id &&
          organization_id == o.organization_id &&
          organization_supplied_user_id == o.organization_supplied_user_id &&
          revoked_access == o.revoked_access &&
          last_synced_at == o.last_synced_at &&
          last_sync_action == o.last_sync_action &&
          enable_auto_sync == o.enable_auto_sync &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          files_synced_at == o.files_synced_at &&
          data_source_metadata == o.data_source_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tags, id, data_source_external_id, data_source_type, token, sync_status, source_items_synced_at, organization_user_id, organization_id, organization_supplied_user_id, revoked_access, last_synced_at, last_sync_action, enable_auto_sync, created_at, updated_at, files_synced_at, data_source_metadata].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Carbon.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

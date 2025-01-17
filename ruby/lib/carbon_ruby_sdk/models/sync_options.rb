=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Carbon
  class SyncOptions
    attr_accessor :tags

    attr_accessor :chunk_size

    attr_accessor :chunk_overlap

    attr_accessor :skip_embedding_generation

    attr_accessor :embedding_model

    attr_accessor :generate_sparse_vectors

    attr_accessor :prepend_filename_to_chunks

    # Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    attr_accessor :max_items_per_chunk

    # Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk
    attr_accessor :sync_files_on_connection

    attr_accessor :set_page_as_boundary

    attr_accessor :request_id

    attr_accessor :enable_file_picker

    # Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    attr_accessor :sync_source_items

    # Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    attr_accessor :incremental_sync

    attr_accessor :file_sync_config

    # Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources.
    attr_accessor :automatically_open_file_picker

    # Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    attr_accessor :data_source_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tags' => :'tags',
        :'chunk_size' => :'chunk_size',
        :'chunk_overlap' => :'chunk_overlap',
        :'skip_embedding_generation' => :'skip_embedding_generation',
        :'embedding_model' => :'embedding_model',
        :'generate_sparse_vectors' => :'generate_sparse_vectors',
        :'prepend_filename_to_chunks' => :'prepend_filename_to_chunks',
        :'max_items_per_chunk' => :'max_items_per_chunk',
        :'sync_files_on_connection' => :'sync_files_on_connection',
        :'set_page_as_boundary' => :'set_page_as_boundary',
        :'request_id' => :'request_id',
        :'enable_file_picker' => :'enable_file_picker',
        :'sync_source_items' => :'sync_source_items',
        :'incremental_sync' => :'incremental_sync',
        :'file_sync_config' => :'file_sync_config',
        :'automatically_open_file_picker' => :'automatically_open_file_picker',
        :'data_source_tags' => :'data_source_tags'
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
        :'chunk_size' => :'Integer',
        :'chunk_overlap' => :'Integer',
        :'skip_embedding_generation' => :'Boolean',
        :'embedding_model' => :'EmbeddingGeneratorsNullable',
        :'generate_sparse_vectors' => :'Boolean',
        :'prepend_filename_to_chunks' => :'Boolean',
        :'max_items_per_chunk' => :'Integer',
        :'sync_files_on_connection' => :'Boolean',
        :'set_page_as_boundary' => :'Boolean',
        :'request_id' => :'String',
        :'enable_file_picker' => :'Boolean',
        :'sync_source_items' => :'Boolean',
        :'incremental_sync' => :'Boolean',
        :'file_sync_config' => :'FileSyncConfigNullable',
        :'automatically_open_file_picker' => :'Boolean',
        :'data_source_tags' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'tags',
        :'chunk_size',
        :'chunk_overlap',
        :'skip_embedding_generation',
        :'embedding_model',
        :'generate_sparse_vectors',
        :'prepend_filename_to_chunks',
        :'max_items_per_chunk',
        :'sync_files_on_connection',
        :'request_id',
        :'file_sync_config',
        :'automatically_open_file_picker',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Carbon::SyncOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Carbon::SyncOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'chunk_size')
        self.chunk_size = attributes[:'chunk_size']
      else
        self.chunk_size = 1500
      end

      if attributes.key?(:'chunk_overlap')
        self.chunk_overlap = attributes[:'chunk_overlap']
      else
        self.chunk_overlap = 20
      end

      if attributes.key?(:'skip_embedding_generation')
        self.skip_embedding_generation = attributes[:'skip_embedding_generation']
      else
        self.skip_embedding_generation = false
      end

      if attributes.key?(:'embedding_model')
        self.embedding_model = attributes[:'embedding_model']
      else
        self.embedding_model = 'OPENAI'
      end

      if attributes.key?(:'generate_sparse_vectors')
        self.generate_sparse_vectors = attributes[:'generate_sparse_vectors']
      else
        self.generate_sparse_vectors = false
      end

      if attributes.key?(:'prepend_filename_to_chunks')
        self.prepend_filename_to_chunks = attributes[:'prepend_filename_to_chunks']
      else
        self.prepend_filename_to_chunks = false
      end

      if attributes.key?(:'max_items_per_chunk')
        self.max_items_per_chunk = attributes[:'max_items_per_chunk']
      end

      if attributes.key?(:'sync_files_on_connection')
        self.sync_files_on_connection = attributes[:'sync_files_on_connection']
      else
        self.sync_files_on_connection = true
      end

      if attributes.key?(:'set_page_as_boundary')
        self.set_page_as_boundary = attributes[:'set_page_as_boundary']
      else
        self.set_page_as_boundary = false
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.key?(:'enable_file_picker')
        self.enable_file_picker = attributes[:'enable_file_picker']
      else
        self.enable_file_picker = true
      end

      if attributes.key?(:'sync_source_items')
        self.sync_source_items = attributes[:'sync_source_items']
      else
        self.sync_source_items = true
      end

      if attributes.key?(:'incremental_sync')
        self.incremental_sync = attributes[:'incremental_sync']
      else
        self.incremental_sync = false
      end

      if attributes.key?(:'file_sync_config')
        self.file_sync_config = attributes[:'file_sync_config']
      end

      if attributes.key?(:'automatically_open_file_picker')
        self.automatically_open_file_picker = attributes[:'automatically_open_file_picker']
      end

      if attributes.key?(:'data_source_tags')
        self.data_source_tags = attributes[:'data_source_tags']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tags == o.tags &&
          chunk_size == o.chunk_size &&
          chunk_overlap == o.chunk_overlap &&
          skip_embedding_generation == o.skip_embedding_generation &&
          embedding_model == o.embedding_model &&
          generate_sparse_vectors == o.generate_sparse_vectors &&
          prepend_filename_to_chunks == o.prepend_filename_to_chunks &&
          max_items_per_chunk == o.max_items_per_chunk &&
          sync_files_on_connection == o.sync_files_on_connection &&
          set_page_as_boundary == o.set_page_as_boundary &&
          request_id == o.request_id &&
          enable_file_picker == o.enable_file_picker &&
          sync_source_items == o.sync_source_items &&
          incremental_sync == o.incremental_sync &&
          file_sync_config == o.file_sync_config &&
          automatically_open_file_picker == o.automatically_open_file_picker &&
          data_source_tags == o.data_source_tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tags, chunk_size, chunk_overlap, skip_embedding_generation, embedding_model, generate_sparse_vectors, prepend_filename_to_chunks, max_items_per_chunk, sync_files_on_connection, set_page_as_boundary, request_id, enable_file_picker, sync_source_items, incremental_sync, file_sync_config, automatically_open_file_picker, data_source_tags].hash
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

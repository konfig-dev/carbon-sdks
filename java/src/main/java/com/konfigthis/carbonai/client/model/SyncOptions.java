/*
 * Carbon
 * Connect external data to LLMs, no matter the source.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.konfigthis.carbonai.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.konfigthis.carbonai.client.model.EmbeddingGeneratorsNullable;
import com.konfigthis.carbonai.client.model.FileSyncConfigNullable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import org.apache.commons.lang3.StringUtils;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.konfigthis.carbonai.client.JSON;

/**
 * SyncOptions
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class SyncOptions {
  public static final String SERIALIZED_NAME_TAGS = "tags";
  @SerializedName(SERIALIZED_NAME_TAGS)
  private Object tags = null;

  public static final String SERIALIZED_NAME_CHUNK_SIZE = "chunk_size";
  @SerializedName(SERIALIZED_NAME_CHUNK_SIZE)
  private Integer chunkSize = 1500;

  public static final String SERIALIZED_NAME_CHUNK_OVERLAP = "chunk_overlap";
  @SerializedName(SERIALIZED_NAME_CHUNK_OVERLAP)
  private Integer chunkOverlap = 20;

  public static final String SERIALIZED_NAME_SKIP_EMBEDDING_GENERATION = "skip_embedding_generation";
  @SerializedName(SERIALIZED_NAME_SKIP_EMBEDDING_GENERATION)
  private Boolean skipEmbeddingGeneration = false;

  public static final String SERIALIZED_NAME_EMBEDDING_MODEL = "embedding_model";
  @SerializedName(SERIALIZED_NAME_EMBEDDING_MODEL)
  private EmbeddingGeneratorsNullable embeddingModel = EmbeddingGeneratorsNullable.OPENAI;

  public static final String SERIALIZED_NAME_GENERATE_SPARSE_VECTORS = "generate_sparse_vectors";
  @SerializedName(SERIALIZED_NAME_GENERATE_SPARSE_VECTORS)
  private Boolean generateSparseVectors = false;

  public static final String SERIALIZED_NAME_PREPEND_FILENAME_TO_CHUNKS = "prepend_filename_to_chunks";
  @SerializedName(SERIALIZED_NAME_PREPEND_FILENAME_TO_CHUNKS)
  private Boolean prependFilenameToChunks = false;

  public static final String SERIALIZED_NAME_MAX_ITEMS_PER_CHUNK = "max_items_per_chunk";
  @SerializedName(SERIALIZED_NAME_MAX_ITEMS_PER_CHUNK)
  private Integer maxItemsPerChunk;

  public static final String SERIALIZED_NAME_SYNC_FILES_ON_CONNECTION = "sync_files_on_connection";
  @SerializedName(SERIALIZED_NAME_SYNC_FILES_ON_CONNECTION)
  private Boolean syncFilesOnConnection = true;

  public static final String SERIALIZED_NAME_SET_PAGE_AS_BOUNDARY = "set_page_as_boundary";
  @SerializedName(SERIALIZED_NAME_SET_PAGE_AS_BOUNDARY)
  private Boolean setPageAsBoundary = false;

  public static final String SERIALIZED_NAME_REQUEST_ID = "request_id";
  @SerializedName(SERIALIZED_NAME_REQUEST_ID)
  private String requestId;

  public static final String SERIALIZED_NAME_ENABLE_FILE_PICKER = "enable_file_picker";
  @SerializedName(SERIALIZED_NAME_ENABLE_FILE_PICKER)
  private Boolean enableFilePicker = true;

  public static final String SERIALIZED_NAME_SYNC_SOURCE_ITEMS = "sync_source_items";
  @SerializedName(SERIALIZED_NAME_SYNC_SOURCE_ITEMS)
  private Boolean syncSourceItems = true;

  public static final String SERIALIZED_NAME_INCREMENTAL_SYNC = "incremental_sync";
  @SerializedName(SERIALIZED_NAME_INCREMENTAL_SYNC)
  private Boolean incrementalSync = false;

  public static final String SERIALIZED_NAME_FILE_SYNC_CONFIG = "file_sync_config";
  @SerializedName(SERIALIZED_NAME_FILE_SYNC_CONFIG)
  private FileSyncConfigNullable fileSyncConfig;

  public SyncOptions() {
  }

  public SyncOptions tags(Object tags) {
    
    
    
    
    this.tags = tags;
    return this;
  }

   /**
   * Get tags
   * @return tags
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Object getTags() {
    return tags;
  }


  public void setTags(Object tags) {
    
    
    
    this.tags = tags;
  }


  public SyncOptions chunkSize(Integer chunkSize) {
    
    
    
    
    this.chunkSize = chunkSize;
    return this;
  }

   /**
   * Get chunkSize
   * @return chunkSize
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "1500", value = "")

  public Integer getChunkSize() {
    return chunkSize;
  }


  public void setChunkSize(Integer chunkSize) {
    
    
    
    this.chunkSize = chunkSize;
  }


  public SyncOptions chunkOverlap(Integer chunkOverlap) {
    
    
    
    
    this.chunkOverlap = chunkOverlap;
    return this;
  }

   /**
   * Get chunkOverlap
   * @return chunkOverlap
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "20", value = "")

  public Integer getChunkOverlap() {
    return chunkOverlap;
  }


  public void setChunkOverlap(Integer chunkOverlap) {
    
    
    
    this.chunkOverlap = chunkOverlap;
  }


  public SyncOptions skipEmbeddingGeneration(Boolean skipEmbeddingGeneration) {
    
    
    
    
    this.skipEmbeddingGeneration = skipEmbeddingGeneration;
    return this;
  }

   /**
   * Get skipEmbeddingGeneration
   * @return skipEmbeddingGeneration
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "")

  public Boolean getSkipEmbeddingGeneration() {
    return skipEmbeddingGeneration;
  }


  public void setSkipEmbeddingGeneration(Boolean skipEmbeddingGeneration) {
    
    
    
    this.skipEmbeddingGeneration = skipEmbeddingGeneration;
  }


  public SyncOptions embeddingModel(EmbeddingGeneratorsNullable embeddingModel) {
    
    
    
    
    this.embeddingModel = embeddingModel;
    return this;
  }

   /**
   * Get embeddingModel
   * @return embeddingModel
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public EmbeddingGeneratorsNullable getEmbeddingModel() {
    return embeddingModel;
  }


  public void setEmbeddingModel(EmbeddingGeneratorsNullable embeddingModel) {
    
    
    
    this.embeddingModel = embeddingModel;
  }


  public SyncOptions generateSparseVectors(Boolean generateSparseVectors) {
    
    
    
    
    this.generateSparseVectors = generateSparseVectors;
    return this;
  }

   /**
   * Get generateSparseVectors
   * @return generateSparseVectors
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "")

  public Boolean getGenerateSparseVectors() {
    return generateSparseVectors;
  }


  public void setGenerateSparseVectors(Boolean generateSparseVectors) {
    
    
    
    this.generateSparseVectors = generateSparseVectors;
  }


  public SyncOptions prependFilenameToChunks(Boolean prependFilenameToChunks) {
    
    
    
    
    this.prependFilenameToChunks = prependFilenameToChunks;
    return this;
  }

   /**
   * Get prependFilenameToChunks
   * @return prependFilenameToChunks
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "")

  public Boolean getPrependFilenameToChunks() {
    return prependFilenameToChunks;
  }


  public void setPrependFilenameToChunks(Boolean prependFilenameToChunks) {
    
    
    
    this.prependFilenameToChunks = prependFilenameToChunks;
  }


  public SyncOptions maxItemsPerChunk(Integer maxItemsPerChunk) {
    
    
    
    
    this.maxItemsPerChunk = maxItemsPerChunk;
    return this;
  }

   /**
   * Number of objects per chunk. For csv, tsv, xlsx, and json files only.
   * @return maxItemsPerChunk
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Number of objects per chunk. For csv, tsv, xlsx, and json files only.")

  public Integer getMaxItemsPerChunk() {
    return maxItemsPerChunk;
  }


  public void setMaxItemsPerChunk(Integer maxItemsPerChunk) {
    
    
    
    this.maxItemsPerChunk = maxItemsPerChunk;
  }


  public SyncOptions syncFilesOnConnection(Boolean syncFilesOnConnection) {
    
    
    
    
    this.syncFilesOnConnection = syncFilesOnConnection;
    return this;
  }

   /**
   * Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk
   * @return syncFilesOnConnection
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk")

  public Boolean getSyncFilesOnConnection() {
    return syncFilesOnConnection;
  }


  public void setSyncFilesOnConnection(Boolean syncFilesOnConnection) {
    
    
    
    this.syncFilesOnConnection = syncFilesOnConnection;
  }


  public SyncOptions setPageAsBoundary(Boolean setPageAsBoundary) {
    
    
    
    
    this.setPageAsBoundary = setPageAsBoundary;
    return this;
  }

   /**
   * Get setPageAsBoundary
   * @return setPageAsBoundary
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "")

  public Boolean getSetPageAsBoundary() {
    return setPageAsBoundary;
  }


  public void setSetPageAsBoundary(Boolean setPageAsBoundary) {
    
    
    
    this.setPageAsBoundary = setPageAsBoundary;
  }


  public SyncOptions requestId(String requestId) {
    
    
    
    
    this.requestId = requestId;
    return this;
  }

   /**
   * Get requestId
   * @return requestId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getRequestId() {
    return requestId;
  }


  public void setRequestId(String requestId) {
    
    
    
    this.requestId = requestId;
  }


  public SyncOptions enableFilePicker(Boolean enableFilePicker) {
    
    
    
    
    this.enableFilePicker = enableFilePicker;
    return this;
  }

   /**
   * Get enableFilePicker
   * @return enableFilePicker
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "")

  public Boolean getEnableFilePicker() {
    return enableFilePicker;
  }


  public void setEnableFilePicker(Boolean enableFilePicker) {
    
    
    
    this.enableFilePicker = enableFilePicker;
  }


  public SyncOptions syncSourceItems(Boolean syncSourceItems) {
    
    
    
    
    this.syncSourceItems = syncSourceItems;
    return this;
  }

   /**
   * Enabling this flag will fetch all available content from the source to be listed via list items endpoint
   * @return syncSourceItems
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Enabling this flag will fetch all available content from the source to be listed via list items endpoint")

  public Boolean getSyncSourceItems() {
    return syncSourceItems;
  }


  public void setSyncSourceItems(Boolean syncSourceItems) {
    
    
    
    this.syncSourceItems = syncSourceItems;
  }


  public SyncOptions incrementalSync(Boolean incrementalSync) {
    
    
    
    
    this.incrementalSync = incrementalSync;
    return this;
  }

   /**
   * Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT. It will be ignored for other data sources.
   * @return incrementalSync
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT. It will be ignored for other data sources.")

  public Boolean getIncrementalSync() {
    return incrementalSync;
  }


  public void setIncrementalSync(Boolean incrementalSync) {
    
    
    
    this.incrementalSync = incrementalSync;
  }


  public SyncOptions fileSyncConfig(FileSyncConfigNullable fileSyncConfig) {
    
    
    
    
    this.fileSyncConfig = fileSyncConfig;
    return this;
  }

   /**
   * Get fileSyncConfig
   * @return fileSyncConfig
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public FileSyncConfigNullable getFileSyncConfig() {
    return fileSyncConfig;
  }


  public void setFileSyncConfig(FileSyncConfigNullable fileSyncConfig) {
    
    
    
    this.fileSyncConfig = fileSyncConfig;
  }

  /**
   * A container for additional, undeclared properties.
   * This is a holder for any undeclared properties as specified with
   * the 'additionalProperties' keyword in the OAS document.
   */
  private Map<String, Object> additionalProperties;

  /**
   * Set the additional (undeclared) property with the specified name and value.
   * If the property does not already exist, create it otherwise replace it.
   *
   * @param key name of the property
   * @param value value of the property
   * @return the SyncOptions instance itself
   */
  public SyncOptions putAdditionalProperty(String key, Object value) {
    if (this.additionalProperties == null) {
        this.additionalProperties = new HashMap<String, Object>();
    }
    this.additionalProperties.put(key, value);
    return this;
  }

  /**
   * Return the additional (undeclared) property.
   *
   * @return a map of objects
   */
  public Map<String, Object> getAdditionalProperties() {
    return additionalProperties;
  }

  /**
   * Return the additional (undeclared) property with the specified name.
   *
   * @param key name of the property
   * @return an object
   */
  public Object getAdditionalProperty(String key) {
    if (this.additionalProperties == null) {
        return null;
    }
    return this.additionalProperties.get(key);
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SyncOptions syncOptions = (SyncOptions) o;
    return Objects.equals(this.tags, syncOptions.tags) &&
        Objects.equals(this.chunkSize, syncOptions.chunkSize) &&
        Objects.equals(this.chunkOverlap, syncOptions.chunkOverlap) &&
        Objects.equals(this.skipEmbeddingGeneration, syncOptions.skipEmbeddingGeneration) &&
        Objects.equals(this.embeddingModel, syncOptions.embeddingModel) &&
        Objects.equals(this.generateSparseVectors, syncOptions.generateSparseVectors) &&
        Objects.equals(this.prependFilenameToChunks, syncOptions.prependFilenameToChunks) &&
        Objects.equals(this.maxItemsPerChunk, syncOptions.maxItemsPerChunk) &&
        Objects.equals(this.syncFilesOnConnection, syncOptions.syncFilesOnConnection) &&
        Objects.equals(this.setPageAsBoundary, syncOptions.setPageAsBoundary) &&
        Objects.equals(this.requestId, syncOptions.requestId) &&
        Objects.equals(this.enableFilePicker, syncOptions.enableFilePicker) &&
        Objects.equals(this.syncSourceItems, syncOptions.syncSourceItems) &&
        Objects.equals(this.incrementalSync, syncOptions.incrementalSync) &&
        Objects.equals(this.fileSyncConfig, syncOptions.fileSyncConfig)&&
        Objects.equals(this.additionalProperties, syncOptions.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(tags, chunkSize, chunkOverlap, skipEmbeddingGeneration, embeddingModel, generateSparseVectors, prependFilenameToChunks, maxItemsPerChunk, syncFilesOnConnection, setPageAsBoundary, requestId, enableFilePicker, syncSourceItems, incrementalSync, fileSyncConfig, additionalProperties);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SyncOptions {\n");
    sb.append("    tags: ").append(toIndentedString(tags)).append("\n");
    sb.append("    chunkSize: ").append(toIndentedString(chunkSize)).append("\n");
    sb.append("    chunkOverlap: ").append(toIndentedString(chunkOverlap)).append("\n");
    sb.append("    skipEmbeddingGeneration: ").append(toIndentedString(skipEmbeddingGeneration)).append("\n");
    sb.append("    embeddingModel: ").append(toIndentedString(embeddingModel)).append("\n");
    sb.append("    generateSparseVectors: ").append(toIndentedString(generateSparseVectors)).append("\n");
    sb.append("    prependFilenameToChunks: ").append(toIndentedString(prependFilenameToChunks)).append("\n");
    sb.append("    maxItemsPerChunk: ").append(toIndentedString(maxItemsPerChunk)).append("\n");
    sb.append("    syncFilesOnConnection: ").append(toIndentedString(syncFilesOnConnection)).append("\n");
    sb.append("    setPageAsBoundary: ").append(toIndentedString(setPageAsBoundary)).append("\n");
    sb.append("    requestId: ").append(toIndentedString(requestId)).append("\n");
    sb.append("    enableFilePicker: ").append(toIndentedString(enableFilePicker)).append("\n");
    sb.append("    syncSourceItems: ").append(toIndentedString(syncSourceItems)).append("\n");
    sb.append("    incrementalSync: ").append(toIndentedString(incrementalSync)).append("\n");
    sb.append("    fileSyncConfig: ").append(toIndentedString(fileSyncConfig)).append("\n");
    sb.append("    additionalProperties: ").append(toIndentedString(additionalProperties)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("tags");
    openapiFields.add("chunk_size");
    openapiFields.add("chunk_overlap");
    openapiFields.add("skip_embedding_generation");
    openapiFields.add("embedding_model");
    openapiFields.add("generate_sparse_vectors");
    openapiFields.add("prepend_filename_to_chunks");
    openapiFields.add("max_items_per_chunk");
    openapiFields.add("sync_files_on_connection");
    openapiFields.add("set_page_as_boundary");
    openapiFields.add("request_id");
    openapiFields.add("enable_file_picker");
    openapiFields.add("sync_source_items");
    openapiFields.add("incremental_sync");
    openapiFields.add("file_sync_config");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SyncOptions
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!SyncOptions.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SyncOptions is not found in the empty JSON string", SyncOptions.openapiRequiredFields.toString()));
        }
      }
      if (!jsonObj.get("request_id").isJsonNull() && (jsonObj.get("request_id") != null && !jsonObj.get("request_id").isJsonNull()) && !jsonObj.get("request_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_id").toString()));
      }
      // validate the optional field `file_sync_config`
      if (jsonObj.get("file_sync_config") != null && !jsonObj.get("file_sync_config").isJsonNull()) {
        FileSyncConfigNullable.validateJsonObject(jsonObj.getAsJsonObject("file_sync_config"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SyncOptions.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SyncOptions' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SyncOptions> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SyncOptions.class));

       return (TypeAdapter<T>) new TypeAdapter<SyncOptions>() {
           @Override
           public void write(JsonWriter out, SyncOptions value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             obj.remove("additionalProperties");
             // serialize additonal properties
             if (value.getAdditionalProperties() != null) {
               for (Map.Entry<String, Object> entry : value.getAdditionalProperties().entrySet()) {
                 if (entry.getValue() instanceof String)
                   obj.addProperty(entry.getKey(), (String) entry.getValue());
                 else if (entry.getValue() instanceof Number)
                   obj.addProperty(entry.getKey(), (Number) entry.getValue());
                 else if (entry.getValue() instanceof Boolean)
                   obj.addProperty(entry.getKey(), (Boolean) entry.getValue());
                 else if (entry.getValue() instanceof Character)
                   obj.addProperty(entry.getKey(), (Character) entry.getValue());
                 else {
                   obj.add(entry.getKey(), gson.toJsonTree(entry.getValue()).getAsJsonObject());
                 }
               }
             }
             elementAdapter.write(out, obj);
           }

           @Override
           public SyncOptions read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             SyncOptions instance = thisAdapter.fromJsonTree(jsonObj);
             for (Map.Entry<String, JsonElement> entry : jsonObj.entrySet()) {
               if (!openapiFields.contains(entry.getKey())) {
                 if (entry.getValue().isJsonPrimitive()) { // primitive type
                   if (entry.getValue().getAsJsonPrimitive().isString())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsString());
                   else if (entry.getValue().getAsJsonPrimitive().isNumber())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsNumber());
                   else if (entry.getValue().getAsJsonPrimitive().isBoolean())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsBoolean());
                   else
                     throw new IllegalArgumentException(String.format("The field `%s` has unknown primitive type. Value: %s", entry.getKey(), entry.getValue().toString()));
                 } else if (entry.getValue().isJsonArray()) {
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), List.class));
                 } else { // JSON object
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), HashMap.class));
                 }
               }
             }
             return instance;
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SyncOptions given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SyncOptions
  * @throws IOException if the JSON string is invalid with respect to SyncOptions
  */
  public static SyncOptions fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SyncOptions.class);
  }

 /**
  * Convert an instance of SyncOptions to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


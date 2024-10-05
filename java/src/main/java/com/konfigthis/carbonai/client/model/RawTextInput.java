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
import com.konfigthis.carbonai.client.model.ColdStorageProps;
import com.konfigthis.carbonai.client.model.EmbeddingGeneratorsNullable;
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
 * RawTextInput
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class RawTextInput {
  public static final String SERIALIZED_NAME_CONTENTS = "contents";
  @SerializedName(SERIALIZED_NAME_CONTENTS)
  private String contents;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_CHUNK_SIZE = "chunk_size";
  @SerializedName(SERIALIZED_NAME_CHUNK_SIZE)
  private Integer chunkSize;

  public static final String SERIALIZED_NAME_CHUNK_OVERLAP = "chunk_overlap";
  @SerializedName(SERIALIZED_NAME_CHUNK_OVERLAP)
  private Integer chunkOverlap;

  public static final String SERIALIZED_NAME_SKIP_EMBEDDING_GENERATION = "skip_embedding_generation";
  @SerializedName(SERIALIZED_NAME_SKIP_EMBEDDING_GENERATION)
  private Boolean skipEmbeddingGeneration = false;

  public static final String SERIALIZED_NAME_OVERWRITE_FILE_ID = "overwrite_file_id";
  @SerializedName(SERIALIZED_NAME_OVERWRITE_FILE_ID)
  private Integer overwriteFileId;

  public static final String SERIALIZED_NAME_EMBEDDING_MODEL = "embedding_model";
  @SerializedName(SERIALIZED_NAME_EMBEDDING_MODEL)
  private EmbeddingGeneratorsNullable embeddingModel = EmbeddingGeneratorsNullable.OPENAI;

  public static final String SERIALIZED_NAME_GENERATE_SPARSE_VECTORS = "generate_sparse_vectors";
  @SerializedName(SERIALIZED_NAME_GENERATE_SPARSE_VECTORS)
  private Boolean generateSparseVectors = false;

  public static final String SERIALIZED_NAME_COLD_STORAGE_PARAMS = "cold_storage_params";
  @SerializedName(SERIALIZED_NAME_COLD_STORAGE_PARAMS)
  private ColdStorageProps coldStorageParams;

  public static final String SERIALIZED_NAME_GENERATE_CHUNKS_ONLY = "generate_chunks_only";
  @SerializedName(SERIALIZED_NAME_GENERATE_CHUNKS_ONLY)
  private Boolean generateChunksOnly = false;

  public static final String SERIALIZED_NAME_STORE_FILE_ONLY = "store_file_only";
  @SerializedName(SERIALIZED_NAME_STORE_FILE_ONLY)
  private Boolean storeFileOnly = false;

  public RawTextInput() {
  }

  public RawTextInput contents(String contents) {
    
    
    if (contents != null && contents.length() < 5) {
      throw new IllegalArgumentException("Invalid value for contents. Length must be greater than or equal to 5.");
    }
    
    this.contents = contents;
    return this;
  }

   /**
   * Get contents
   * @return contents
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getContents() {
    return contents;
  }


  public void setContents(String contents) {
    
    
    if (contents != null && contents.length() < 5) {
      throw new IllegalArgumentException("Invalid value for contents. Length must be greater than or equal to 5.");
    }
    this.contents = contents;
  }


  public RawTextInput name(String name) {
    
    
    
    
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    
    
    
    this.name = name;
  }


  public RawTextInput chunkSize(Integer chunkSize) {
    
    
    
    
    this.chunkSize = chunkSize;
    return this;
  }

   /**
   * Get chunkSize
   * @return chunkSize
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getChunkSize() {
    return chunkSize;
  }


  public void setChunkSize(Integer chunkSize) {
    
    
    
    this.chunkSize = chunkSize;
  }


  public RawTextInput chunkOverlap(Integer chunkOverlap) {
    
    
    
    
    this.chunkOverlap = chunkOverlap;
    return this;
  }

   /**
   * Get chunkOverlap
   * @return chunkOverlap
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getChunkOverlap() {
    return chunkOverlap;
  }


  public void setChunkOverlap(Integer chunkOverlap) {
    
    
    
    this.chunkOverlap = chunkOverlap;
  }


  public RawTextInput skipEmbeddingGeneration(Boolean skipEmbeddingGeneration) {
    
    
    
    
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


  public RawTextInput overwriteFileId(Integer overwriteFileId) {
    
    
    
    
    this.overwriteFileId = overwriteFileId;
    return this;
  }

   /**
   * Get overwriteFileId
   * @return overwriteFileId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getOverwriteFileId() {
    return overwriteFileId;
  }


  public void setOverwriteFileId(Integer overwriteFileId) {
    
    
    
    this.overwriteFileId = overwriteFileId;
  }


  public RawTextInput embeddingModel(EmbeddingGeneratorsNullable embeddingModel) {
    
    
    
    
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


  public RawTextInput generateSparseVectors(Boolean generateSparseVectors) {
    
    
    
    
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


  public RawTextInput coldStorageParams(ColdStorageProps coldStorageParams) {
    
    
    
    
    this.coldStorageParams = coldStorageParams;
    return this;
  }

   /**
   * Get coldStorageParams
   * @return coldStorageParams
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ColdStorageProps getColdStorageParams() {
    return coldStorageParams;
  }


  public void setColdStorageParams(ColdStorageProps coldStorageParams) {
    
    
    
    this.coldStorageParams = coldStorageParams;
  }


  public RawTextInput generateChunksOnly(Boolean generateChunksOnly) {
    
    
    
    
    this.generateChunksOnly = generateChunksOnly;
    return this;
  }

   /**
   * If this flag is enabled, the file will be chunked and stored with Carbon,         but no embeddings will be generated. This overrides the skip_embedding_generation flag.
   * @return generateChunksOnly
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "If this flag is enabled, the file will be chunked and stored with Carbon,         but no embeddings will be generated. This overrides the skip_embedding_generation flag.")

  public Boolean getGenerateChunksOnly() {
    return generateChunksOnly;
  }


  public void setGenerateChunksOnly(Boolean generateChunksOnly) {
    
    
    
    this.generateChunksOnly = generateChunksOnly;
  }


  public RawTextInput storeFileOnly(Boolean storeFileOnly) {
    
    
    
    
    this.storeFileOnly = storeFileOnly;
    return this;
  }

   /**
   * If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
   * @return storeFileOnly
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "If this flag is enabled, the file will be stored with Carbon, but no processing will be done.")

  public Boolean getStoreFileOnly() {
    return storeFileOnly;
  }


  public void setStoreFileOnly(Boolean storeFileOnly) {
    
    
    
    this.storeFileOnly = storeFileOnly;
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
   * @return the RawTextInput instance itself
   */
  public RawTextInput putAdditionalProperty(String key, Object value) {
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
    RawTextInput rawTextInput = (RawTextInput) o;
    return Objects.equals(this.contents, rawTextInput.contents) &&
        Objects.equals(this.name, rawTextInput.name) &&
        Objects.equals(this.chunkSize, rawTextInput.chunkSize) &&
        Objects.equals(this.chunkOverlap, rawTextInput.chunkOverlap) &&
        Objects.equals(this.skipEmbeddingGeneration, rawTextInput.skipEmbeddingGeneration) &&
        Objects.equals(this.overwriteFileId, rawTextInput.overwriteFileId) &&
        Objects.equals(this.embeddingModel, rawTextInput.embeddingModel) &&
        Objects.equals(this.generateSparseVectors, rawTextInput.generateSparseVectors) &&
        Objects.equals(this.coldStorageParams, rawTextInput.coldStorageParams) &&
        Objects.equals(this.generateChunksOnly, rawTextInput.generateChunksOnly) &&
        Objects.equals(this.storeFileOnly, rawTextInput.storeFileOnly)&&
        Objects.equals(this.additionalProperties, rawTextInput.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(contents, name, chunkSize, chunkOverlap, skipEmbeddingGeneration, overwriteFileId, embeddingModel, generateSparseVectors, coldStorageParams, generateChunksOnly, storeFileOnly, additionalProperties);
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
    sb.append("class RawTextInput {\n");
    sb.append("    contents: ").append(toIndentedString(contents)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    chunkSize: ").append(toIndentedString(chunkSize)).append("\n");
    sb.append("    chunkOverlap: ").append(toIndentedString(chunkOverlap)).append("\n");
    sb.append("    skipEmbeddingGeneration: ").append(toIndentedString(skipEmbeddingGeneration)).append("\n");
    sb.append("    overwriteFileId: ").append(toIndentedString(overwriteFileId)).append("\n");
    sb.append("    embeddingModel: ").append(toIndentedString(embeddingModel)).append("\n");
    sb.append("    generateSparseVectors: ").append(toIndentedString(generateSparseVectors)).append("\n");
    sb.append("    coldStorageParams: ").append(toIndentedString(coldStorageParams)).append("\n");
    sb.append("    generateChunksOnly: ").append(toIndentedString(generateChunksOnly)).append("\n");
    sb.append("    storeFileOnly: ").append(toIndentedString(storeFileOnly)).append("\n");
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
    openapiFields.add("contents");
    openapiFields.add("name");
    openapiFields.add("chunk_size");
    openapiFields.add("chunk_overlap");
    openapiFields.add("skip_embedding_generation");
    openapiFields.add("overwrite_file_id");
    openapiFields.add("embedding_model");
    openapiFields.add("generate_sparse_vectors");
    openapiFields.add("cold_storage_params");
    openapiFields.add("generate_chunks_only");
    openapiFields.add("store_file_only");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("contents");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to RawTextInput
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!RawTextInput.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RawTextInput is not found in the empty JSON string", RawTextInput.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : RawTextInput.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("contents").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `contents` to be a primitive type in the JSON string but got `%s`", jsonObj.get("contents").toString()));
      }
      if (!jsonObj.get("name").isJsonNull() && (jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      // validate the optional field `cold_storage_params`
      if (jsonObj.get("cold_storage_params") != null && !jsonObj.get("cold_storage_params").isJsonNull()) {
        ColdStorageProps.validateJsonObject(jsonObj.getAsJsonObject("cold_storage_params"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RawTextInput.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RawTextInput' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RawTextInput> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RawTextInput.class));

       return (TypeAdapter<T>) new TypeAdapter<RawTextInput>() {
           @Override
           public void write(JsonWriter out, RawTextInput value) throws IOException {
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
                 else if (entry.getValue() == null) {
                   obj.addProperty(entry.getKey(), (String) null);
                 } else {
                   obj.add(entry.getKey(), gson.toJsonTree(entry.getValue()).getAsJsonObject());
                 }
               }
             }
             elementAdapter.write(out, obj);
           }

           @Override
           public RawTextInput read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             RawTextInput instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of RawTextInput given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of RawTextInput
  * @throws IOException if the JSON string is invalid with respect to RawTextInput
  */
  public static RawTextInput fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RawTextInput.class);
  }

 /**
  * Convert an instance of RawTextInput to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


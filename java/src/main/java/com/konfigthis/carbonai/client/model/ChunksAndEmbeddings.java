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
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
 * ChunksAndEmbeddings
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class ChunksAndEmbeddings {
  public static final String SERIALIZED_NAME_CHUNK_NUMBER = "chunk_number";
  @SerializedName(SERIALIZED_NAME_CHUNK_NUMBER)
  private Integer chunkNumber;

  public static final String SERIALIZED_NAME_CHUNK = "chunk";
  @SerializedName(SERIALIZED_NAME_CHUNK)
  private String chunk;

  public static final String SERIALIZED_NAME_EMBEDDING = "embedding";
  @SerializedName(SERIALIZED_NAME_EMBEDDING)
  private List<Double> embedding = null;

  public ChunksAndEmbeddings() {
  }

  public ChunksAndEmbeddings chunkNumber(Integer chunkNumber) {
    
    
    
    
    this.chunkNumber = chunkNumber;
    return this;
  }

   /**
   * Get chunkNumber
   * @return chunkNumber
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "")

  public Integer getChunkNumber() {
    return chunkNumber;
  }


  public void setChunkNumber(Integer chunkNumber) {
    
    
    
    this.chunkNumber = chunkNumber;
  }


  public ChunksAndEmbeddings chunk(String chunk) {
    
    
    
    
    this.chunk = chunk;
    return this;
  }

   /**
   * Get chunk
   * @return chunk
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getChunk() {
    return chunk;
  }


  public void setChunk(String chunk) {
    
    
    
    this.chunk = chunk;
  }


  public ChunksAndEmbeddings embedding(List<Double> embedding) {
    
    
    
    
    this.embedding = embedding;
    return this;
  }

  public ChunksAndEmbeddings addEmbeddingItem(Double embeddingItem) {
    if (this.embedding == null) {
      this.embedding = new ArrayList<>();
    }
    this.embedding.add(embeddingItem);
    return this;
  }

   /**
   * Get embedding
   * @return embedding
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Double> getEmbedding() {
    return embedding;
  }


  public void setEmbedding(List<Double> embedding) {
    
    
    
    this.embedding = embedding;
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
   * @return the ChunksAndEmbeddings instance itself
   */
  public ChunksAndEmbeddings putAdditionalProperty(String key, Object value) {
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
    ChunksAndEmbeddings chunksAndEmbeddings = (ChunksAndEmbeddings) o;
    return Objects.equals(this.chunkNumber, chunksAndEmbeddings.chunkNumber) &&
        Objects.equals(this.chunk, chunksAndEmbeddings.chunk) &&
        Objects.equals(this.embedding, chunksAndEmbeddings.embedding)&&
        Objects.equals(this.additionalProperties, chunksAndEmbeddings.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(chunkNumber, chunk, embedding, additionalProperties);
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
    sb.append("class ChunksAndEmbeddings {\n");
    sb.append("    chunkNumber: ").append(toIndentedString(chunkNumber)).append("\n");
    sb.append("    chunk: ").append(toIndentedString(chunk)).append("\n");
    sb.append("    embedding: ").append(toIndentedString(embedding)).append("\n");
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
    openapiFields.add("chunk_number");
    openapiFields.add("chunk");
    openapiFields.add("embedding");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("chunk_number");
    openapiRequiredFields.add("chunk");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to ChunksAndEmbeddings
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!ChunksAndEmbeddings.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ChunksAndEmbeddings is not found in the empty JSON string", ChunksAndEmbeddings.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ChunksAndEmbeddings.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("chunk").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `chunk` to be a primitive type in the JSON string but got `%s`", jsonObj.get("chunk").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("embedding") != null && !jsonObj.get("embedding").isJsonNull() && !jsonObj.get("embedding").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `embedding` to be an array in the JSON string or null but got `%s`", jsonObj.get("embedding").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ChunksAndEmbeddings.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ChunksAndEmbeddings' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ChunksAndEmbeddings> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ChunksAndEmbeddings.class));

       return (TypeAdapter<T>) new TypeAdapter<ChunksAndEmbeddings>() {
           @Override
           public void write(JsonWriter out, ChunksAndEmbeddings value) throws IOException {
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
           public ChunksAndEmbeddings read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             ChunksAndEmbeddings instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of ChunksAndEmbeddings given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ChunksAndEmbeddings
  * @throws IOException if the JSON string is invalid with respect to ChunksAndEmbeddings
  */
  public static ChunksAndEmbeddings fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ChunksAndEmbeddings.class);
  }

 /**
  * Convert an instance of ChunksAndEmbeddings to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


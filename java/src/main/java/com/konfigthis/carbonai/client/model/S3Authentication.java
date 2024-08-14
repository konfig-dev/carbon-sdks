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
 * S3Authentication
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class S3Authentication {
  public static final String SERIALIZED_NAME_SOURCE = "source";
  @SerializedName(SERIALIZED_NAME_SOURCE)
  private Object source = null;

  public static final String SERIALIZED_NAME_ACCESS_KEY = "access_key";
  @SerializedName(SERIALIZED_NAME_ACCESS_KEY)
  private String accessKey;

  public static final String SERIALIZED_NAME_ACCESS_KEY_SECRET = "access_key_secret";
  @SerializedName(SERIALIZED_NAME_ACCESS_KEY_SECRET)
  private String accessKeySecret;

  public static final String SERIALIZED_NAME_ENDPOINT_URL = "endpoint_url";
  @SerializedName(SERIALIZED_NAME_ENDPOINT_URL)
  private String endpointUrl;

  public S3Authentication() {
  }

  public S3Authentication source(Object source) {
    
    
    
    
    this.source = source;
    return this;
  }

   /**
   * Get source
   * @return source
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "")

  public Object getSource() {
    return source;
  }


  public void setSource(Object source) {
    
    
    
    this.source = source;
  }


  public S3Authentication accessKey(String accessKey) {
    
    
    
    
    this.accessKey = accessKey;
    return this;
  }

   /**
   * Get accessKey
   * @return accessKey
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getAccessKey() {
    return accessKey;
  }


  public void setAccessKey(String accessKey) {
    
    
    
    this.accessKey = accessKey;
  }


  public S3Authentication accessKeySecret(String accessKeySecret) {
    
    
    
    
    this.accessKeySecret = accessKeySecret;
    return this;
  }

   /**
   * Get accessKeySecret
   * @return accessKeySecret
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getAccessKeySecret() {
    return accessKeySecret;
  }


  public void setAccessKeySecret(String accessKeySecret) {
    
    
    
    this.accessKeySecret = accessKeySecret;
  }


  public S3Authentication endpointUrl(String endpointUrl) {
    
    
    
    
    this.endpointUrl = endpointUrl;
    return this;
  }

   /**
   * You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint.         The URL should be of format &lt;region&gt;.digitaloceanspaces.com. It&#39;s not required for S3 buckets.
   * @return endpointUrl
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint.         The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets.")

  public String getEndpointUrl() {
    return endpointUrl;
  }


  public void setEndpointUrl(String endpointUrl) {
    
    
    
    this.endpointUrl = endpointUrl;
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
   * @return the S3Authentication instance itself
   */
  public S3Authentication putAdditionalProperty(String key, Object value) {
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
    S3Authentication s3Authentication = (S3Authentication) o;
    return Objects.equals(this.source, s3Authentication.source) &&
        Objects.equals(this.accessKey, s3Authentication.accessKey) &&
        Objects.equals(this.accessKeySecret, s3Authentication.accessKeySecret) &&
        Objects.equals(this.endpointUrl, s3Authentication.endpointUrl)&&
        Objects.equals(this.additionalProperties, s3Authentication.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(source, accessKey, accessKeySecret, endpointUrl, additionalProperties);
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
    sb.append("class S3Authentication {\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    accessKey: ").append(toIndentedString(accessKey)).append("\n");
    sb.append("    accessKeySecret: ").append(toIndentedString(accessKeySecret)).append("\n");
    sb.append("    endpointUrl: ").append(toIndentedString(endpointUrl)).append("\n");
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
    openapiFields.add("source");
    openapiFields.add("access_key");
    openapiFields.add("access_key_secret");
    openapiFields.add("endpoint_url");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("source");
    openapiRequiredFields.add("access_key");
    openapiRequiredFields.add("access_key_secret");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to S3Authentication
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!S3Authentication.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in S3Authentication is not found in the empty JSON string", S3Authentication.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : S3Authentication.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("access_key").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `access_key` to be a primitive type in the JSON string but got `%s`", jsonObj.get("access_key").toString()));
      }
      if (!jsonObj.get("access_key_secret").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `access_key_secret` to be a primitive type in the JSON string but got `%s`", jsonObj.get("access_key_secret").toString()));
      }
      if (!jsonObj.get("endpoint_url").isJsonNull() && (jsonObj.get("endpoint_url") != null && !jsonObj.get("endpoint_url").isJsonNull()) && !jsonObj.get("endpoint_url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `endpoint_url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("endpoint_url").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!S3Authentication.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'S3Authentication' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<S3Authentication> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(S3Authentication.class));

       return (TypeAdapter<T>) new TypeAdapter<S3Authentication>() {
           @Override
           public void write(JsonWriter out, S3Authentication value) throws IOException {
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
           public S3Authentication read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             S3Authentication instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of S3Authentication given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of S3Authentication
  * @throws IOException if the JSON string is invalid with respect to S3Authentication
  */
  public static S3Authentication fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, S3Authentication.class);
  }

 /**
  * Convert an instance of S3Authentication to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


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
 * SentWebhookPayloadObject
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class SentWebhookPayloadObject {
  /**
   * Gets or Sets objectType
   */
  @JsonAdapter(ObjectTypeEnum.Adapter.class)
 public enum ObjectTypeEnum {
    CHUNK_LIST("CHUNK_LIST"),
    
    DATA_SOURCE("DATA_SOURCE"),
    
    FILE("FILE"),
    
    FILE_LIST("FILE_LIST"),
    
    NONE("NONE"),
    
    ORGANIZATION_USER("ORGANIZATION_USER"),
    
    UPLOAD_REQUEST_ID("UPLOAD_REQUEST_ID"),
    
    WEBPAGE("WEBPAGE");

    private String value;

    ObjectTypeEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static ObjectTypeEnum fromValue(String value) {
      for (ObjectTypeEnum b : ObjectTypeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<ObjectTypeEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final ObjectTypeEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public ObjectTypeEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return ObjectTypeEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_OBJECT_TYPE = "object_type";
  @SerializedName(SERIALIZED_NAME_OBJECT_TYPE)
  private ObjectTypeEnum objectType;

  public static final String SERIALIZED_NAME_OBJECT_ID = "object_id";
  @SerializedName(SERIALIZED_NAME_OBJECT_ID)
  private Object objectId = null;

  public static final String SERIALIZED_NAME_ADDITIONAL_INFORMATION = "additional_information";
  @SerializedName(SERIALIZED_NAME_ADDITIONAL_INFORMATION)
  private Object additionalInformation = null;

  public SentWebhookPayloadObject() {
  }

  public SentWebhookPayloadObject objectType(ObjectTypeEnum objectType) {
    
    
    
    
    this.objectType = objectType;
    return this;
  }

   /**
   * Get objectType
   * @return objectType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ObjectTypeEnum getObjectType() {
    return objectType;
  }


  public void setObjectType(ObjectTypeEnum objectType) {
    
    
    
    this.objectType = objectType;
  }


  public SentWebhookPayloadObject objectId(Object objectId) {
    
    
    
    
    this.objectId = objectId;
    return this;
  }

   /**
   * Get objectId
   * @return objectId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Object getObjectId() {
    return objectId;
  }


  public void setObjectId(Object objectId) {
    
    
    
    this.objectId = objectId;
  }


  public SentWebhookPayloadObject additionalInformation(Object additionalInformation) {
    
    
    
    
    this.additionalInformation = additionalInformation;
    return this;
  }

   /**
   * Get additionalInformation
   * @return additionalInformation
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Object getAdditionalInformation() {
    return additionalInformation;
  }


  public void setAdditionalInformation(Object additionalInformation) {
    
    
    
    this.additionalInformation = additionalInformation;
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
   * @return the SentWebhookPayloadObject instance itself
   */
  public SentWebhookPayloadObject putAdditionalProperty(String key, Object value) {
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
    SentWebhookPayloadObject sentWebhookPayloadObject = (SentWebhookPayloadObject) o;
    return Objects.equals(this.objectType, sentWebhookPayloadObject.objectType) &&
        Objects.equals(this.objectId, sentWebhookPayloadObject.objectId) &&
        Objects.equals(this.additionalInformation, sentWebhookPayloadObject.additionalInformation)&&
        Objects.equals(this.additionalProperties, sentWebhookPayloadObject.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(objectType, objectId, additionalInformation, additionalProperties);
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
    sb.append("class SentWebhookPayloadObject {\n");
    sb.append("    objectType: ").append(toIndentedString(objectType)).append("\n");
    sb.append("    objectId: ").append(toIndentedString(objectId)).append("\n");
    sb.append("    additionalInformation: ").append(toIndentedString(additionalInformation)).append("\n");
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
    openapiFields.add("object_type");
    openapiFields.add("object_id");
    openapiFields.add("additional_information");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SentWebhookPayloadObject
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!SentWebhookPayloadObject.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SentWebhookPayloadObject is not found in the empty JSON string", SentWebhookPayloadObject.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("object_type") != null && !jsonObj.get("object_type").isJsonNull()) && !jsonObj.get("object_type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `object_type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("object_type").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SentWebhookPayloadObject.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SentWebhookPayloadObject' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SentWebhookPayloadObject> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SentWebhookPayloadObject.class));

       return (TypeAdapter<T>) new TypeAdapter<SentWebhookPayloadObject>() {
           @Override
           public void write(JsonWriter out, SentWebhookPayloadObject value) throws IOException {
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
           public SentWebhookPayloadObject read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             SentWebhookPayloadObject instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of SentWebhookPayloadObject given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SentWebhookPayloadObject
  * @throws IOException if the JSON string is invalid with respect to SentWebhookPayloadObject
  */
  public static SentWebhookPayloadObject fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SentWebhookPayloadObject.class);
  }

 /**
  * Convert an instance of SentWebhookPayloadObject to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


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
 * UserConfiguration
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class UserConfiguration {
  public static final String SERIALIZED_NAME_AUTO_SYNC_ENABLED_SOURCES = "auto_sync_enabled_sources";
  @SerializedName(SERIALIZED_NAME_AUTO_SYNC_ENABLED_SOURCES)
  private Object autoSyncEnabledSources = null;

  public static final String SERIALIZED_NAME_MAX_FILES = "max_files";
  @SerializedName(SERIALIZED_NAME_MAX_FILES)
  private Integer maxFiles;

  public static final String SERIALIZED_NAME_MAX_FILES_PER_UPLOAD = "max_files_per_upload";
  @SerializedName(SERIALIZED_NAME_MAX_FILES_PER_UPLOAD)
  private Integer maxFilesPerUpload;

  public static final String SERIALIZED_NAME_MAX_CHARACTERS = "max_characters";
  @SerializedName(SERIALIZED_NAME_MAX_CHARACTERS)
  private Integer maxCharacters;

  public static final String SERIALIZED_NAME_MAX_CHARACTERS_PER_FILE = "max_characters_per_file";
  @SerializedName(SERIALIZED_NAME_MAX_CHARACTERS_PER_FILE)
  private Integer maxCharactersPerFile;

  public static final String SERIALIZED_NAME_MAX_CHARACTERS_PER_UPLOAD = "max_characters_per_upload";
  @SerializedName(SERIALIZED_NAME_MAX_CHARACTERS_PER_UPLOAD)
  private Integer maxCharactersPerUpload;

  public static final String SERIALIZED_NAME_AUTO_SYNC_INTERVAL = "auto_sync_interval";
  @SerializedName(SERIALIZED_NAME_AUTO_SYNC_INTERVAL)
  private Integer autoSyncInterval;

  public UserConfiguration() {
  }

  public UserConfiguration autoSyncEnabledSources(Object autoSyncEnabledSources) {
    
    
    
    
    this.autoSyncEnabledSources = autoSyncEnabledSources;
    return this;
  }

   /**
   * Get autoSyncEnabledSources
   * @return autoSyncEnabledSources
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Object getAutoSyncEnabledSources() {
    return autoSyncEnabledSources;
  }


  public void setAutoSyncEnabledSources(Object autoSyncEnabledSources) {
    
    
    
    this.autoSyncEnabledSources = autoSyncEnabledSources;
  }


  public UserConfiguration maxFiles(Integer maxFiles) {
    if (maxFiles != null && maxFiles < -1) {
      throw new IllegalArgumentException("Invalid value for maxFiles. Must be greater than or equal to -1.");
    }
    
    
    
    this.maxFiles = maxFiles;
    return this;
  }

   /**
   * Custom file upload limit for the user over *all* user&#39;s files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit.
   * minimum: -1
   * @return maxFiles
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit.")

  public Integer getMaxFiles() {
    return maxFiles;
  }


  public void setMaxFiles(Integer maxFiles) {
    if (maxFiles != null && maxFiles < -1) {
      throw new IllegalArgumentException("Invalid value for maxFiles. Must be greater than or equal to -1.");
    }
    
    
    this.maxFiles = maxFiles;
  }


  public UserConfiguration maxFilesPerUpload(Integer maxFilesPerUpload) {
    if (maxFilesPerUpload != null && maxFilesPerUpload < -1) {
      throw new IllegalArgumentException("Invalid value for maxFilesPerUpload. Must be greater than or equal to -1.");
    }
    
    
    
    this.maxFilesPerUpload = maxFilesPerUpload;
    return this;
  }

   /**
   * Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit.
   * minimum: -1
   * @return maxFilesPerUpload
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit.")

  public Integer getMaxFilesPerUpload() {
    return maxFilesPerUpload;
  }


  public void setMaxFilesPerUpload(Integer maxFilesPerUpload) {
    if (maxFilesPerUpload != null && maxFilesPerUpload < -1) {
      throw new IllegalArgumentException("Invalid value for maxFilesPerUpload. Must be greater than or equal to -1.");
    }
    
    
    this.maxFilesPerUpload = maxFilesPerUpload;
  }


  public UserConfiguration maxCharacters(Integer maxCharacters) {
    if (maxCharacters != null && maxCharacters < -1) {
      throw new IllegalArgumentException("Invalid value for maxCharacters. Must be greater than or equal to -1.");
    }
    
    
    
    this.maxCharacters = maxCharacters;
    return this;
  }

   /**
   * Custom character upload limit for the user over *all* user&#39;s files across all uploads.          If set, then the user will not be allowed to upload more characters than this limit. If not set, or if set to -1,         then the user will have no limit.
   * minimum: -1
   * @return maxCharacters
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Custom character upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more characters than this limit. If not set, or if set to -1,         then the user will have no limit.")

  public Integer getMaxCharacters() {
    return maxCharacters;
  }


  public void setMaxCharacters(Integer maxCharacters) {
    if (maxCharacters != null && maxCharacters < -1) {
      throw new IllegalArgumentException("Invalid value for maxCharacters. Must be greater than or equal to -1.");
    }
    
    
    this.maxCharacters = maxCharacters;
  }


  public UserConfiguration maxCharactersPerFile(Integer maxCharactersPerFile) {
    if (maxCharactersPerFile != null && maxCharactersPerFile < -1) {
      throw new IllegalArgumentException("Invalid value for maxCharactersPerFile. Must be greater than or equal to -1.");
    }
    
    
    
    this.maxCharactersPerFile = maxCharactersPerFile;
    return this;
  }

   /**
   * A single file upload from the user can not exceed this character limit.         If set, then the file will not be synced if it exceeds this limit. If not set, or if set to -1, then the          user will have no limit.
   * minimum: -1
   * @return maxCharactersPerFile
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "A single file upload from the user can not exceed this character limit.         If set, then the file will not be synced if it exceeds this limit. If not set, or if set to -1, then the          user will have no limit.")

  public Integer getMaxCharactersPerFile() {
    return maxCharactersPerFile;
  }


  public void setMaxCharactersPerFile(Integer maxCharactersPerFile) {
    if (maxCharactersPerFile != null && maxCharactersPerFile < -1) {
      throw new IllegalArgumentException("Invalid value for maxCharactersPerFile. Must be greater than or equal to -1.");
    }
    
    
    this.maxCharactersPerFile = maxCharactersPerFile;
  }


  public UserConfiguration maxCharactersPerUpload(Integer maxCharactersPerUpload) {
    if (maxCharactersPerUpload != null && maxCharactersPerUpload < -1) {
      throw new IllegalArgumentException("Invalid value for maxCharactersPerUpload. Must be greater than or equal to -1.");
    }
    
    
    
    this.maxCharactersPerUpload = maxCharactersPerUpload;
    return this;
  }

   /**
   * Custom character upload limit for the user across a single upload.         If set, then the user won&#39;t be able to sync more than this many characters in one upload.          If not set, or if set to -1, then the user will have no limit.
   * minimum: -1
   * @return maxCharactersPerUpload
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Custom character upload limit for the user across a single upload.         If set, then the user won't be able to sync more than this many characters in one upload.          If not set, or if set to -1, then the user will have no limit.")

  public Integer getMaxCharactersPerUpload() {
    return maxCharactersPerUpload;
  }


  public void setMaxCharactersPerUpload(Integer maxCharactersPerUpload) {
    if (maxCharactersPerUpload != null && maxCharactersPerUpload < -1) {
      throw new IllegalArgumentException("Invalid value for maxCharactersPerUpload. Must be greater than or equal to -1.");
    }
    
    
    this.maxCharactersPerUpload = maxCharactersPerUpload;
  }


  public UserConfiguration autoSyncInterval(Integer autoSyncInterval) {
    if (autoSyncInterval != null && autoSyncInterval < -1) {
      throw new IllegalArgumentException("Invalid value for autoSyncInterval. Must be greater than or equal to -1.");
    }
    
    
    
    this.autoSyncInterval = autoSyncInterval;
    return this;
  }

   /**
   * The interval in hours at which the user&#39;s data sources should be synced. If not set or set to -1,          the user will be synced at the organization level interval or default interval if that is also not set.          Must be one of [3, 6, 12, 24]
   * minimum: -1
   * @return autoSyncInterval
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The interval in hours at which the user's data sources should be synced. If not set or set to -1,          the user will be synced at the organization level interval or default interval if that is also not set.          Must be one of [3, 6, 12, 24]")

  public Integer getAutoSyncInterval() {
    return autoSyncInterval;
  }


  public void setAutoSyncInterval(Integer autoSyncInterval) {
    if (autoSyncInterval != null && autoSyncInterval < -1) {
      throw new IllegalArgumentException("Invalid value for autoSyncInterval. Must be greater than or equal to -1.");
    }
    
    
    this.autoSyncInterval = autoSyncInterval;
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
   * @return the UserConfiguration instance itself
   */
  public UserConfiguration putAdditionalProperty(String key, Object value) {
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
    UserConfiguration userConfiguration = (UserConfiguration) o;
    return Objects.equals(this.autoSyncEnabledSources, userConfiguration.autoSyncEnabledSources) &&
        Objects.equals(this.maxFiles, userConfiguration.maxFiles) &&
        Objects.equals(this.maxFilesPerUpload, userConfiguration.maxFilesPerUpload) &&
        Objects.equals(this.maxCharacters, userConfiguration.maxCharacters) &&
        Objects.equals(this.maxCharactersPerFile, userConfiguration.maxCharactersPerFile) &&
        Objects.equals(this.maxCharactersPerUpload, userConfiguration.maxCharactersPerUpload) &&
        Objects.equals(this.autoSyncInterval, userConfiguration.autoSyncInterval)&&
        Objects.equals(this.additionalProperties, userConfiguration.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(autoSyncEnabledSources, maxFiles, maxFilesPerUpload, maxCharacters, maxCharactersPerFile, maxCharactersPerUpload, autoSyncInterval, additionalProperties);
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
    sb.append("class UserConfiguration {\n");
    sb.append("    autoSyncEnabledSources: ").append(toIndentedString(autoSyncEnabledSources)).append("\n");
    sb.append("    maxFiles: ").append(toIndentedString(maxFiles)).append("\n");
    sb.append("    maxFilesPerUpload: ").append(toIndentedString(maxFilesPerUpload)).append("\n");
    sb.append("    maxCharacters: ").append(toIndentedString(maxCharacters)).append("\n");
    sb.append("    maxCharactersPerFile: ").append(toIndentedString(maxCharactersPerFile)).append("\n");
    sb.append("    maxCharactersPerUpload: ").append(toIndentedString(maxCharactersPerUpload)).append("\n");
    sb.append("    autoSyncInterval: ").append(toIndentedString(autoSyncInterval)).append("\n");
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
    openapiFields.add("auto_sync_enabled_sources");
    openapiFields.add("max_files");
    openapiFields.add("max_files_per_upload");
    openapiFields.add("max_characters");
    openapiFields.add("max_characters_per_file");
    openapiFields.add("max_characters_per_upload");
    openapiFields.add("auto_sync_interval");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UserConfiguration
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UserConfiguration.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UserConfiguration is not found in the empty JSON string", UserConfiguration.openapiRequiredFields.toString()));
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UserConfiguration.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UserConfiguration' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UserConfiguration> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UserConfiguration.class));

       return (TypeAdapter<T>) new TypeAdapter<UserConfiguration>() {
           @Override
           public void write(JsonWriter out, UserConfiguration value) throws IOException {
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
           public UserConfiguration read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             UserConfiguration instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of UserConfiguration given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UserConfiguration
  * @throws IOException if the JSON string is invalid with respect to UserConfiguration
  */
  public static UserConfiguration fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UserConfiguration.class);
  }

 /**
  * Convert an instance of UserConfiguration to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


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
import com.konfigthis.carbonai.client.model.FileContentTypesNullable;
import com.konfigthis.carbonai.client.model.HybridSearchTuningParamsNullable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
 * GetEmbeddingDocumentsBody
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class GetEmbeddingDocumentsBody {
  public static final String SERIALIZED_NAME_TAGS = "tags";
  @SerializedName(SERIALIZED_NAME_TAGS)
  private Map<String, Object> tags = null;

  public static final String SERIALIZED_NAME_QUERY = "query";
  @SerializedName(SERIALIZED_NAME_QUERY)
  private String query;

  public static final String SERIALIZED_NAME_QUERY_VECTOR = "query_vector";
  @SerializedName(SERIALIZED_NAME_QUERY_VECTOR)
  private List<Double> queryVector = null;

  public static final String SERIALIZED_NAME_K = "k";
  @SerializedName(SERIALIZED_NAME_K)
  private Integer k;

  public static final String SERIALIZED_NAME_FILE_IDS = "file_ids";
  @SerializedName(SERIALIZED_NAME_FILE_IDS)
  private List<Integer> fileIds = null;

  public static final String SERIALIZED_NAME_PARENT_FILE_IDS = "parent_file_ids";
  @SerializedName(SERIALIZED_NAME_PARENT_FILE_IDS)
  private List<Integer> parentFileIds = null;

  public static final String SERIALIZED_NAME_INCLUDE_ALL_CHILDREN = "include_all_children";
  @SerializedName(SERIALIZED_NAME_INCLUDE_ALL_CHILDREN)
  private Boolean includeAllChildren = false;

  public static final String SERIALIZED_NAME_TAGS_V2 = "tags_v2";
  @SerializedName(SERIALIZED_NAME_TAGS_V2)
  private Object tagsV2;

  public static final String SERIALIZED_NAME_INCLUDE_TAGS = "include_tags";
  @SerializedName(SERIALIZED_NAME_INCLUDE_TAGS)
  private Boolean includeTags;

  public static final String SERIALIZED_NAME_INCLUDE_VECTORS = "include_vectors";
  @SerializedName(SERIALIZED_NAME_INCLUDE_VECTORS)
  private Boolean includeVectors;

  public static final String SERIALIZED_NAME_INCLUDE_RAW_FILE = "include_raw_file";
  @SerializedName(SERIALIZED_NAME_INCLUDE_RAW_FILE)
  private Boolean includeRawFile;

  public static final String SERIALIZED_NAME_HYBRID_SEARCH = "hybrid_search";
  @SerializedName(SERIALIZED_NAME_HYBRID_SEARCH)
  private Boolean hybridSearch;

  public static final String SERIALIZED_NAME_HYBRID_SEARCH_TUNING_PARAMETERS = "hybrid_search_tuning_parameters";
  @SerializedName(SERIALIZED_NAME_HYBRID_SEARCH_TUNING_PARAMETERS)
  private HybridSearchTuningParamsNullable hybridSearchTuningParameters;

  public static final String SERIALIZED_NAME_MEDIA_TYPE = "media_type";
  @SerializedName(SERIALIZED_NAME_MEDIA_TYPE)
  private FileContentTypesNullable mediaType;

  public static final String SERIALIZED_NAME_EMBEDDING_MODEL = "embedding_model";
  @SerializedName(SERIALIZED_NAME_EMBEDDING_MODEL)
  private EmbeddingGeneratorsNullable embeddingModel = EmbeddingGeneratorsNullable.OPENAI;

  public GetEmbeddingDocumentsBody() {
  }

  public GetEmbeddingDocumentsBody tags(Map<String, Object> tags) {
    
    
    
    
    this.tags = tags;
    return this;
  }

  public GetEmbeddingDocumentsBody putTagsItem(String key, Object tagsItem) {
    if (this.tags == null) {
      this.tags = new HashMap<>();
    }
    this.tags.put(key, tagsItem);
    return this;
  }

   /**
   * A set of tags to limit the search to. Deprecated and may be removed in the future.
   * @return tags
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "A set of tags to limit the search to. Deprecated and may be removed in the future.")

  public Map<String, Object> getTags() {
    return tags;
  }


  public void setTags(Map<String, Object> tags) {
    
    
    
    this.tags = tags;
  }


  public GetEmbeddingDocumentsBody query(String query) {
    
    
    if (query != null && query.length() < 1) {
      throw new IllegalArgumentException("Invalid value for query. Length must be greater than or equal to 1.");
    }
    
    this.query = query;
    return this;
  }

   /**
   * Query for which to get related chunks and embeddings.
   * @return query
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Query for which to get related chunks and embeddings.")

  public String getQuery() {
    return query;
  }


  public void setQuery(String query) {
    
    
    if (query != null && query.length() < 1) {
      throw new IllegalArgumentException("Invalid value for query. Length must be greater than or equal to 1.");
    }
    this.query = query;
  }


  public GetEmbeddingDocumentsBody queryVector(List<Double> queryVector) {
    
    
    
    
    this.queryVector = queryVector;
    return this;
  }

  public GetEmbeddingDocumentsBody addQueryVectorItem(Double queryVectorItem) {
    if (this.queryVector == null) {
      this.queryVector = new ArrayList<>();
    }
    this.queryVector.add(queryVectorItem);
    return this;
  }

   /**
   * Optional query vector for which to get related chunks and embeddings. It must have been         generated by the same model used to generate the embeddings across which the search is being conducted. Cannot         provide both &#x60;query&#x60; and &#x60;query_vector&#x60;.
   * @return queryVector
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Optional query vector for which to get related chunks and embeddings. It must have been         generated by the same model used to generate the embeddings across which the search is being conducted. Cannot         provide both `query` and `query_vector`.")

  public List<Double> getQueryVector() {
    return queryVector;
  }


  public void setQueryVector(List<Double> queryVector) {
    
    
    
    this.queryVector = queryVector;
  }


  public GetEmbeddingDocumentsBody k(Integer k) {
    if (k != null && k < 1) {
      throw new IllegalArgumentException("Invalid value for k. Must be greater than or equal to 1.");
    }
    
    
    
    this.k = k;
    return this;
  }

   /**
   * Number of related chunks to return.
   * minimum: 1
   * @return k
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Number of related chunks to return.")

  public Integer getK() {
    return k;
  }


  public void setK(Integer k) {
    if (k != null && k < 1) {
      throw new IllegalArgumentException("Invalid value for k. Must be greater than or equal to 1.");
    }
    
    
    this.k = k;
  }


  public GetEmbeddingDocumentsBody fileIds(List<Integer> fileIds) {
    
    
    
    
    this.fileIds = fileIds;
    return this;
  }

  public GetEmbeddingDocumentsBody addFileIdsItem(Integer fileIdsItem) {
    if (this.fileIds == null) {
      this.fileIds = new ArrayList<>();
    }
    this.fileIds.add(fileIdsItem);
    return this;
  }

   /**
   * Optional list of file IDs to limit the search to
   * @return fileIds
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Optional list of file IDs to limit the search to")

  public List<Integer> getFileIds() {
    return fileIds;
  }


  public void setFileIds(List<Integer> fileIds) {
    
    
    
    this.fileIds = fileIds;
  }


  public GetEmbeddingDocumentsBody parentFileIds(List<Integer> parentFileIds) {
    
    
    
    
    this.parentFileIds = parentFileIds;
    return this;
  }

  public GetEmbeddingDocumentsBody addParentFileIdsItem(Integer parentFileIdsItem) {
    if (this.parentFileIds == null) {
      this.parentFileIds = new ArrayList<>();
    }
    this.parentFileIds.add(parentFileIdsItem);
    return this;
  }

   /**
   * Optional list of parent file IDs to limit the search to. A parent file describes a file to which         another file belongs (e.g. a folder)
   * @return parentFileIds
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Optional list of parent file IDs to limit the search to. A parent file describes a file to which         another file belongs (e.g. a folder)")

  public List<Integer> getParentFileIds() {
    return parentFileIds;
  }


  public void setParentFileIds(List<Integer> parentFileIds) {
    
    
    
    this.parentFileIds = parentFileIds;
  }


  public GetEmbeddingDocumentsBody includeAllChildren(Boolean includeAllChildren) {
    
    
    
    
    this.includeAllChildren = includeAllChildren;
    return this;
  }

   /**
   * Flag to control whether or not to include all children of filtered files in the embedding search.
   * @return includeAllChildren
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "Flag to control whether or not to include all children of filtered files in the embedding search.")

  public Boolean getIncludeAllChildren() {
    return includeAllChildren;
  }


  public void setIncludeAllChildren(Boolean includeAllChildren) {
    
    
    
    this.includeAllChildren = includeAllChildren;
  }


  public GetEmbeddingDocumentsBody tagsV2(Object tagsV2) {
    
    
    
    
    this.tagsV2 = tagsV2;
    return this;
  }

   /**
   * A set of tags to limit the search to. Use this instead of &#x60;tags&#x60;, which is deprecated.
   * @return tagsV2
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"OR\":[{\"key\":\"subject\",\"negate\":false,\"value\":\"holy-bible\"},{\"key\":\"person-of-interest\",\"negate\":false,\"value\":\"jesus christ\"},{\"key\":\"genre\",\"negate\":true,\"value\":\"fiction\"},{\"AND\":[{\"key\":\"subject\",\"negate\":true,\"value\":\"tao-te-ching\"},{\"key\":\"author\",\"negate\":false,\"value\":\"lao-tzu\"}]}]}", value = "A set of tags to limit the search to. Use this instead of `tags`, which is deprecated.")

  public Object getTagsV2() {
    return tagsV2;
  }


  public void setTagsV2(Object tagsV2) {
    
    
    
    this.tagsV2 = tagsV2;
  }


  public GetEmbeddingDocumentsBody includeTags(Boolean includeTags) {
    
    
    
    
    this.includeTags = includeTags;
    return this;
  }

   /**
   * Flag to control whether or not to include tags for each chunk in the response.
   * @return includeTags
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Flag to control whether or not to include tags for each chunk in the response.")

  public Boolean getIncludeTags() {
    return includeTags;
  }


  public void setIncludeTags(Boolean includeTags) {
    
    
    
    this.includeTags = includeTags;
  }


  public GetEmbeddingDocumentsBody includeVectors(Boolean includeVectors) {
    
    
    
    
    this.includeVectors = includeVectors;
    return this;
  }

   /**
   * Flag to control whether or not to include embedding vectors in the response.
   * @return includeVectors
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Flag to control whether or not to include embedding vectors in the response.")

  public Boolean getIncludeVectors() {
    return includeVectors;
  }


  public void setIncludeVectors(Boolean includeVectors) {
    
    
    
    this.includeVectors = includeVectors;
  }


  public GetEmbeddingDocumentsBody includeRawFile(Boolean includeRawFile) {
    
    
    
    
    this.includeRawFile = includeRawFile;
    return this;
  }

   /**
   * Flag to control whether or not to include a signed URL to the raw file containing each chunk         in the response.
   * @return includeRawFile
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Flag to control whether or not to include a signed URL to the raw file containing each chunk         in the response.")

  public Boolean getIncludeRawFile() {
    return includeRawFile;
  }


  public void setIncludeRawFile(Boolean includeRawFile) {
    
    
    
    this.includeRawFile = includeRawFile;
  }


  public GetEmbeddingDocumentsBody hybridSearch(Boolean hybridSearch) {
    
    
    
    
    this.hybridSearch = hybridSearch;
    return this;
  }

   /**
   * Flag to control whether or not to perform hybrid search.
   * @return hybridSearch
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Flag to control whether or not to perform hybrid search.")

  public Boolean getHybridSearch() {
    return hybridSearch;
  }


  public void setHybridSearch(Boolean hybridSearch) {
    
    
    
    this.hybridSearch = hybridSearch;
  }


  public GetEmbeddingDocumentsBody hybridSearchTuningParameters(HybridSearchTuningParamsNullable hybridSearchTuningParameters) {
    
    
    
    
    this.hybridSearchTuningParameters = hybridSearchTuningParameters;
    return this;
  }

   /**
   * Get hybridSearchTuningParameters
   * @return hybridSearchTuningParameters
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public HybridSearchTuningParamsNullable getHybridSearchTuningParameters() {
    return hybridSearchTuningParameters;
  }


  public void setHybridSearchTuningParameters(HybridSearchTuningParamsNullable hybridSearchTuningParameters) {
    
    
    
    this.hybridSearchTuningParameters = hybridSearchTuningParameters;
  }


  public GetEmbeddingDocumentsBody mediaType(FileContentTypesNullable mediaType) {
    
    
    
    
    this.mediaType = mediaType;
    return this;
  }

   /**
   * Get mediaType
   * @return mediaType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public FileContentTypesNullable getMediaType() {
    return mediaType;
  }


  public void setMediaType(FileContentTypesNullable mediaType) {
    
    
    
    this.mediaType = mediaType;
  }


  public GetEmbeddingDocumentsBody embeddingModel(EmbeddingGeneratorsNullable embeddingModel) {
    
    
    
    
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
   * @return the GetEmbeddingDocumentsBody instance itself
   */
  public GetEmbeddingDocumentsBody putAdditionalProperty(String key, Object value) {
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
    GetEmbeddingDocumentsBody getEmbeddingDocumentsBody = (GetEmbeddingDocumentsBody) o;
    return Objects.equals(this.tags, getEmbeddingDocumentsBody.tags) &&
        Objects.equals(this.query, getEmbeddingDocumentsBody.query) &&
        Objects.equals(this.queryVector, getEmbeddingDocumentsBody.queryVector) &&
        Objects.equals(this.k, getEmbeddingDocumentsBody.k) &&
        Objects.equals(this.fileIds, getEmbeddingDocumentsBody.fileIds) &&
        Objects.equals(this.parentFileIds, getEmbeddingDocumentsBody.parentFileIds) &&
        Objects.equals(this.includeAllChildren, getEmbeddingDocumentsBody.includeAllChildren) &&
        Objects.equals(this.tagsV2, getEmbeddingDocumentsBody.tagsV2) &&
        Objects.equals(this.includeTags, getEmbeddingDocumentsBody.includeTags) &&
        Objects.equals(this.includeVectors, getEmbeddingDocumentsBody.includeVectors) &&
        Objects.equals(this.includeRawFile, getEmbeddingDocumentsBody.includeRawFile) &&
        Objects.equals(this.hybridSearch, getEmbeddingDocumentsBody.hybridSearch) &&
        Objects.equals(this.hybridSearchTuningParameters, getEmbeddingDocumentsBody.hybridSearchTuningParameters) &&
        Objects.equals(this.mediaType, getEmbeddingDocumentsBody.mediaType) &&
        Objects.equals(this.embeddingModel, getEmbeddingDocumentsBody.embeddingModel)&&
        Objects.equals(this.additionalProperties, getEmbeddingDocumentsBody.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(tags, query, queryVector, k, fileIds, parentFileIds, includeAllChildren, tagsV2, includeTags, includeVectors, includeRawFile, hybridSearch, hybridSearchTuningParameters, mediaType, embeddingModel, additionalProperties);
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
    sb.append("class GetEmbeddingDocumentsBody {\n");
    sb.append("    tags: ").append(toIndentedString(tags)).append("\n");
    sb.append("    query: ").append(toIndentedString(query)).append("\n");
    sb.append("    queryVector: ").append(toIndentedString(queryVector)).append("\n");
    sb.append("    k: ").append(toIndentedString(k)).append("\n");
    sb.append("    fileIds: ").append(toIndentedString(fileIds)).append("\n");
    sb.append("    parentFileIds: ").append(toIndentedString(parentFileIds)).append("\n");
    sb.append("    includeAllChildren: ").append(toIndentedString(includeAllChildren)).append("\n");
    sb.append("    tagsV2: ").append(toIndentedString(tagsV2)).append("\n");
    sb.append("    includeTags: ").append(toIndentedString(includeTags)).append("\n");
    sb.append("    includeVectors: ").append(toIndentedString(includeVectors)).append("\n");
    sb.append("    includeRawFile: ").append(toIndentedString(includeRawFile)).append("\n");
    sb.append("    hybridSearch: ").append(toIndentedString(hybridSearch)).append("\n");
    sb.append("    hybridSearchTuningParameters: ").append(toIndentedString(hybridSearchTuningParameters)).append("\n");
    sb.append("    mediaType: ").append(toIndentedString(mediaType)).append("\n");
    sb.append("    embeddingModel: ").append(toIndentedString(embeddingModel)).append("\n");
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
    openapiFields.add("query");
    openapiFields.add("query_vector");
    openapiFields.add("k");
    openapiFields.add("file_ids");
    openapiFields.add("parent_file_ids");
    openapiFields.add("include_all_children");
    openapiFields.add("tags_v2");
    openapiFields.add("include_tags");
    openapiFields.add("include_vectors");
    openapiFields.add("include_raw_file");
    openapiFields.add("hybrid_search");
    openapiFields.add("hybrid_search_tuning_parameters");
    openapiFields.add("media_type");
    openapiFields.add("embedding_model");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("query");
    openapiRequiredFields.add("k");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to GetEmbeddingDocumentsBody
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!GetEmbeddingDocumentsBody.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetEmbeddingDocumentsBody is not found in the empty JSON string", GetEmbeddingDocumentsBody.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetEmbeddingDocumentsBody.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("query").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `query` to be a primitive type in the JSON string but got `%s`", jsonObj.get("query").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("query_vector") != null && !jsonObj.get("query_vector").isJsonNull() && !jsonObj.get("query_vector").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `query_vector` to be an array in the JSON string or null but got `%s`", jsonObj.get("query_vector").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("file_ids") != null && !jsonObj.get("file_ids").isJsonNull() && !jsonObj.get("file_ids").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `file_ids` to be an array in the JSON string or null but got `%s`", jsonObj.get("file_ids").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("parent_file_ids") != null && !jsonObj.get("parent_file_ids").isJsonNull() && !jsonObj.get("parent_file_ids").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `parent_file_ids` to be an array in the JSON string or null but got `%s`", jsonObj.get("parent_file_ids").toString()));
      }
      // validate the optional field `hybrid_search_tuning_parameters`
      if (jsonObj.get("hybrid_search_tuning_parameters") != null && !jsonObj.get("hybrid_search_tuning_parameters").isJsonNull()) {
        HybridSearchTuningParamsNullable.validateJsonObject(jsonObj.getAsJsonObject("hybrid_search_tuning_parameters"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetEmbeddingDocumentsBody.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetEmbeddingDocumentsBody' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetEmbeddingDocumentsBody> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetEmbeddingDocumentsBody.class));

       return (TypeAdapter<T>) new TypeAdapter<GetEmbeddingDocumentsBody>() {
           @Override
           public void write(JsonWriter out, GetEmbeddingDocumentsBody value) throws IOException {
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
           public GetEmbeddingDocumentsBody read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             GetEmbeddingDocumentsBody instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of GetEmbeddingDocumentsBody given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of GetEmbeddingDocumentsBody
  * @throws IOException if the JSON string is invalid with respect to GetEmbeddingDocumentsBody
  */
  public static GetEmbeddingDocumentsBody fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetEmbeddingDocumentsBody.class);
  }

 /**
  * Convert an instance of GetEmbeddingDocumentsBody to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

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
import com.konfigthis.carbonai.client.model.EmbeddingGenerators;
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
 * WebscrapeRequest
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class WebscrapeRequest {
  public static final String SERIALIZED_NAME_TAGS = "tags";
  @SerializedName(SERIALIZED_NAME_TAGS)
  private Map<String, Object> tags = null;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_RECURSION_DEPTH = "recursion_depth";
  @SerializedName(SERIALIZED_NAME_RECURSION_DEPTH)
  private Integer recursionDepth = 3;

  public static final String SERIALIZED_NAME_MAX_PAGES_TO_SCRAPE = "max_pages_to_scrape";
  @SerializedName(SERIALIZED_NAME_MAX_PAGES_TO_SCRAPE)
  private Integer maxPagesToScrape = 100;

  public static final String SERIALIZED_NAME_CHUNK_SIZE = "chunk_size";
  @SerializedName(SERIALIZED_NAME_CHUNK_SIZE)
  private Integer chunkSize = 1500;

  public static final String SERIALIZED_NAME_CHUNK_OVERLAP = "chunk_overlap";
  @SerializedName(SERIALIZED_NAME_CHUNK_OVERLAP)
  private Integer chunkOverlap = 20;

  public static final String SERIALIZED_NAME_SKIP_EMBEDDING_GENERATION = "skip_embedding_generation";
  @SerializedName(SERIALIZED_NAME_SKIP_EMBEDDING_GENERATION)
  private Boolean skipEmbeddingGeneration = false;

  public static final String SERIALIZED_NAME_ENABLE_AUTO_SYNC = "enable_auto_sync";
  @SerializedName(SERIALIZED_NAME_ENABLE_AUTO_SYNC)
  private Boolean enableAutoSync = false;

  public static final String SERIALIZED_NAME_GENERATE_SPARSE_VECTORS = "generate_sparse_vectors";
  @SerializedName(SERIALIZED_NAME_GENERATE_SPARSE_VECTORS)
  private Boolean generateSparseVectors = false;

  public static final String SERIALIZED_NAME_PREPEND_FILENAME_TO_CHUNKS = "prepend_filename_to_chunks";
  @SerializedName(SERIALIZED_NAME_PREPEND_FILENAME_TO_CHUNKS)
  private Boolean prependFilenameToChunks = false;

  public static final String SERIALIZED_NAME_HTML_TAGS_TO_SKIP = "html_tags_to_skip";
  @SerializedName(SERIALIZED_NAME_HTML_TAGS_TO_SKIP)
  private List<String> htmlTagsToSkip = null;

  public static final String SERIALIZED_NAME_CSS_CLASSES_TO_SKIP = "css_classes_to_skip";
  @SerializedName(SERIALIZED_NAME_CSS_CLASSES_TO_SKIP)
  private List<String> cssClassesToSkip = null;

  public static final String SERIALIZED_NAME_CSS_SELECTORS_TO_SKIP = "css_selectors_to_skip";
  @SerializedName(SERIALIZED_NAME_CSS_SELECTORS_TO_SKIP)
  private List<String> cssSelectorsToSkip = null;

  public static final String SERIALIZED_NAME_EMBEDDING_MODEL = "embedding_model";
  @SerializedName(SERIALIZED_NAME_EMBEDDING_MODEL)
  private EmbeddingGenerators embeddingModel;

  public static final String SERIALIZED_NAME_URL_PATHS_TO_INCLUDE = "url_paths_to_include";
  @SerializedName(SERIALIZED_NAME_URL_PATHS_TO_INCLUDE)
  private List<String> urlPathsToInclude = null;

  public WebscrapeRequest() {
  }

  public WebscrapeRequest tags(Map<String, Object> tags) {
    
    
    
    
    this.tags = tags;
    return this;
  }

  public WebscrapeRequest putTagsItem(String key, Object tagsItem) {
    if (this.tags == null) {
      this.tags = new HashMap<>();
    }
    this.tags.put(key, tagsItem);
    return this;
  }

   /**
   * Get tags
   * @return tags
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{}", value = "")

  public Map<String, Object> getTags() {
    return tags;
  }


  public void setTags(Map<String, Object> tags) {
    
    
    
    this.tags = tags;
  }


  public WebscrapeRequest url(String url) {
    
    
    
    
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getUrl() {
    return url;
  }


  public void setUrl(String url) {
    
    
    
    this.url = url;
  }


  public WebscrapeRequest recursionDepth(Integer recursionDepth) {
    if (recursionDepth != null && recursionDepth < 0) {
      throw new IllegalArgumentException("Invalid value for recursionDepth. Must be greater than or equal to 0.");
    }
    
    
    
    this.recursionDepth = recursionDepth;
    return this;
  }

   /**
   * Get recursionDepth
   * minimum: 0
   * @return recursionDepth
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "3", value = "")

  public Integer getRecursionDepth() {
    return recursionDepth;
  }


  public void setRecursionDepth(Integer recursionDepth) {
    if (recursionDepth != null && recursionDepth < 0) {
      throw new IllegalArgumentException("Invalid value for recursionDepth. Must be greater than or equal to 0.");
    }
    
    
    this.recursionDepth = recursionDepth;
  }


  public WebscrapeRequest maxPagesToScrape(Integer maxPagesToScrape) {
    if (maxPagesToScrape != null && maxPagesToScrape < 1) {
      throw new IllegalArgumentException("Invalid value for maxPagesToScrape. Must be greater than or equal to 1.");
    }
    
    
    
    this.maxPagesToScrape = maxPagesToScrape;
    return this;
  }

   /**
   * Get maxPagesToScrape
   * minimum: 1
   * @return maxPagesToScrape
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "100", value = "")

  public Integer getMaxPagesToScrape() {
    return maxPagesToScrape;
  }


  public void setMaxPagesToScrape(Integer maxPagesToScrape) {
    if (maxPagesToScrape != null && maxPagesToScrape < 1) {
      throw new IllegalArgumentException("Invalid value for maxPagesToScrape. Must be greater than or equal to 1.");
    }
    
    
    this.maxPagesToScrape = maxPagesToScrape;
  }


  public WebscrapeRequest chunkSize(Integer chunkSize) {
    
    
    
    
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


  public WebscrapeRequest chunkOverlap(Integer chunkOverlap) {
    
    
    
    
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


  public WebscrapeRequest skipEmbeddingGeneration(Boolean skipEmbeddingGeneration) {
    
    
    
    
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


  public WebscrapeRequest enableAutoSync(Boolean enableAutoSync) {
    
    
    
    
    this.enableAutoSync = enableAutoSync;
    return this;
  }

   /**
   * Get enableAutoSync
   * @return enableAutoSync
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "")

  public Boolean getEnableAutoSync() {
    return enableAutoSync;
  }


  public void setEnableAutoSync(Boolean enableAutoSync) {
    
    
    
    this.enableAutoSync = enableAutoSync;
  }


  public WebscrapeRequest generateSparseVectors(Boolean generateSparseVectors) {
    
    
    
    
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


  public WebscrapeRequest prependFilenameToChunks(Boolean prependFilenameToChunks) {
    
    
    
    
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


  public WebscrapeRequest htmlTagsToSkip(List<String> htmlTagsToSkip) {
    
    
    
    
    this.htmlTagsToSkip = htmlTagsToSkip;
    return this;
  }

  public WebscrapeRequest addHtmlTagsToSkipItem(String htmlTagsToSkipItem) {
    if (this.htmlTagsToSkip == null) {
      this.htmlTagsToSkip = new ArrayList<>();
    }
    this.htmlTagsToSkip.add(htmlTagsToSkipItem);
    return this;
  }

   /**
   * Get htmlTagsToSkip
   * @return htmlTagsToSkip
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "[]", value = "")

  public List<String> getHtmlTagsToSkip() {
    return htmlTagsToSkip;
  }


  public void setHtmlTagsToSkip(List<String> htmlTagsToSkip) {
    
    
    
    this.htmlTagsToSkip = htmlTagsToSkip;
  }


  public WebscrapeRequest cssClassesToSkip(List<String> cssClassesToSkip) {
    
    
    
    
    this.cssClassesToSkip = cssClassesToSkip;
    return this;
  }

  public WebscrapeRequest addCssClassesToSkipItem(String cssClassesToSkipItem) {
    if (this.cssClassesToSkip == null) {
      this.cssClassesToSkip = new ArrayList<>();
    }
    this.cssClassesToSkip.add(cssClassesToSkipItem);
    return this;
  }

   /**
   * Get cssClassesToSkip
   * @return cssClassesToSkip
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "[]", value = "")

  public List<String> getCssClassesToSkip() {
    return cssClassesToSkip;
  }


  public void setCssClassesToSkip(List<String> cssClassesToSkip) {
    
    
    
    this.cssClassesToSkip = cssClassesToSkip;
  }


  public WebscrapeRequest cssSelectorsToSkip(List<String> cssSelectorsToSkip) {
    
    
    
    
    this.cssSelectorsToSkip = cssSelectorsToSkip;
    return this;
  }

  public WebscrapeRequest addCssSelectorsToSkipItem(String cssSelectorsToSkipItem) {
    if (this.cssSelectorsToSkip == null) {
      this.cssSelectorsToSkip = new ArrayList<>();
    }
    this.cssSelectorsToSkip.add(cssSelectorsToSkipItem);
    return this;
  }

   /**
   * Get cssSelectorsToSkip
   * @return cssSelectorsToSkip
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "[]", value = "")

  public List<String> getCssSelectorsToSkip() {
    return cssSelectorsToSkip;
  }


  public void setCssSelectorsToSkip(List<String> cssSelectorsToSkip) {
    
    
    
    this.cssSelectorsToSkip = cssSelectorsToSkip;
  }


  public WebscrapeRequest embeddingModel(EmbeddingGenerators embeddingModel) {
    
    
    
    
    this.embeddingModel = embeddingModel;
    return this;
  }

   /**
   * Get embeddingModel
   * @return embeddingModel
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public EmbeddingGenerators getEmbeddingModel() {
    return embeddingModel;
  }


  public void setEmbeddingModel(EmbeddingGenerators embeddingModel) {
    
    
    
    this.embeddingModel = embeddingModel;
  }


  public WebscrapeRequest urlPathsToInclude(List<String> urlPathsToInclude) {
    
    
    
    
    this.urlPathsToInclude = urlPathsToInclude;
    return this;
  }

  public WebscrapeRequest addUrlPathsToIncludeItem(String urlPathsToIncludeItem) {
    if (this.urlPathsToInclude == null) {
      this.urlPathsToInclude = new ArrayList<>();
    }
    this.urlPathsToInclude.add(urlPathsToIncludeItem);
    return this;
  }

   /**
   * URL subpaths or directories that you want to include. For example if you want to only include         URLs that start with /questions in stackoverflow.com, you will add /questions/ in this input
   * @return urlPathsToInclude
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "[]", value = "URL subpaths or directories that you want to include. For example if you want to only include         URLs that start with /questions in stackoverflow.com, you will add /questions/ in this input")

  public List<String> getUrlPathsToInclude() {
    return urlPathsToInclude;
  }


  public void setUrlPathsToInclude(List<String> urlPathsToInclude) {
    
    
    
    this.urlPathsToInclude = urlPathsToInclude;
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
   * @return the WebscrapeRequest instance itself
   */
  public WebscrapeRequest putAdditionalProperty(String key, Object value) {
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
    WebscrapeRequest webscrapeRequest = (WebscrapeRequest) o;
    return Objects.equals(this.tags, webscrapeRequest.tags) &&
        Objects.equals(this.url, webscrapeRequest.url) &&
        Objects.equals(this.recursionDepth, webscrapeRequest.recursionDepth) &&
        Objects.equals(this.maxPagesToScrape, webscrapeRequest.maxPagesToScrape) &&
        Objects.equals(this.chunkSize, webscrapeRequest.chunkSize) &&
        Objects.equals(this.chunkOverlap, webscrapeRequest.chunkOverlap) &&
        Objects.equals(this.skipEmbeddingGeneration, webscrapeRequest.skipEmbeddingGeneration) &&
        Objects.equals(this.enableAutoSync, webscrapeRequest.enableAutoSync) &&
        Objects.equals(this.generateSparseVectors, webscrapeRequest.generateSparseVectors) &&
        Objects.equals(this.prependFilenameToChunks, webscrapeRequest.prependFilenameToChunks) &&
        Objects.equals(this.htmlTagsToSkip, webscrapeRequest.htmlTagsToSkip) &&
        Objects.equals(this.cssClassesToSkip, webscrapeRequest.cssClassesToSkip) &&
        Objects.equals(this.cssSelectorsToSkip, webscrapeRequest.cssSelectorsToSkip) &&
        Objects.equals(this.embeddingModel, webscrapeRequest.embeddingModel) &&
        Objects.equals(this.urlPathsToInclude, webscrapeRequest.urlPathsToInclude)&&
        Objects.equals(this.additionalProperties, webscrapeRequest.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(tags, url, recursionDepth, maxPagesToScrape, chunkSize, chunkOverlap, skipEmbeddingGeneration, enableAutoSync, generateSparseVectors, prependFilenameToChunks, htmlTagsToSkip, cssClassesToSkip, cssSelectorsToSkip, embeddingModel, urlPathsToInclude, additionalProperties);
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
    sb.append("class WebscrapeRequest {\n");
    sb.append("    tags: ").append(toIndentedString(tags)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    recursionDepth: ").append(toIndentedString(recursionDepth)).append("\n");
    sb.append("    maxPagesToScrape: ").append(toIndentedString(maxPagesToScrape)).append("\n");
    sb.append("    chunkSize: ").append(toIndentedString(chunkSize)).append("\n");
    sb.append("    chunkOverlap: ").append(toIndentedString(chunkOverlap)).append("\n");
    sb.append("    skipEmbeddingGeneration: ").append(toIndentedString(skipEmbeddingGeneration)).append("\n");
    sb.append("    enableAutoSync: ").append(toIndentedString(enableAutoSync)).append("\n");
    sb.append("    generateSparseVectors: ").append(toIndentedString(generateSparseVectors)).append("\n");
    sb.append("    prependFilenameToChunks: ").append(toIndentedString(prependFilenameToChunks)).append("\n");
    sb.append("    htmlTagsToSkip: ").append(toIndentedString(htmlTagsToSkip)).append("\n");
    sb.append("    cssClassesToSkip: ").append(toIndentedString(cssClassesToSkip)).append("\n");
    sb.append("    cssSelectorsToSkip: ").append(toIndentedString(cssSelectorsToSkip)).append("\n");
    sb.append("    embeddingModel: ").append(toIndentedString(embeddingModel)).append("\n");
    sb.append("    urlPathsToInclude: ").append(toIndentedString(urlPathsToInclude)).append("\n");
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
    openapiFields.add("url");
    openapiFields.add("recursion_depth");
    openapiFields.add("max_pages_to_scrape");
    openapiFields.add("chunk_size");
    openapiFields.add("chunk_overlap");
    openapiFields.add("skip_embedding_generation");
    openapiFields.add("enable_auto_sync");
    openapiFields.add("generate_sparse_vectors");
    openapiFields.add("prepend_filename_to_chunks");
    openapiFields.add("html_tags_to_skip");
    openapiFields.add("css_classes_to_skip");
    openapiFields.add("css_selectors_to_skip");
    openapiFields.add("embedding_model");
    openapiFields.add("url_paths_to_include");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("url");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to WebscrapeRequest
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!WebscrapeRequest.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in WebscrapeRequest is not found in the empty JSON string", WebscrapeRequest.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : WebscrapeRequest.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("url").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("html_tags_to_skip") != null && !jsonObj.get("html_tags_to_skip").isJsonNull() && !jsonObj.get("html_tags_to_skip").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `html_tags_to_skip` to be an array in the JSON string or null but got `%s`", jsonObj.get("html_tags_to_skip").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("css_classes_to_skip") != null && !jsonObj.get("css_classes_to_skip").isJsonNull() && !jsonObj.get("css_classes_to_skip").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `css_classes_to_skip` to be an array in the JSON string or null but got `%s`", jsonObj.get("css_classes_to_skip").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("css_selectors_to_skip") != null && !jsonObj.get("css_selectors_to_skip").isJsonNull() && !jsonObj.get("css_selectors_to_skip").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `css_selectors_to_skip` to be an array in the JSON string or null but got `%s`", jsonObj.get("css_selectors_to_skip").toString()));
      }
      // ensure the optional json data is an array if present (nullable)
      if (jsonObj.get("url_paths_to_include") != null && !jsonObj.get("url_paths_to_include").isJsonNull() && !jsonObj.get("url_paths_to_include").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `url_paths_to_include` to be an array in the JSON string or null but got `%s`", jsonObj.get("url_paths_to_include").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!WebscrapeRequest.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'WebscrapeRequest' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<WebscrapeRequest> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(WebscrapeRequest.class));

       return (TypeAdapter<T>) new TypeAdapter<WebscrapeRequest>() {
           @Override
           public void write(JsonWriter out, WebscrapeRequest value) throws IOException {
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
           public WebscrapeRequest read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             WebscrapeRequest instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of WebscrapeRequest given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of WebscrapeRequest
  * @throws IOException if the JSON string is invalid with respect to WebscrapeRequest
  */
  public static WebscrapeRequest fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, WebscrapeRequest.class);
  }

 /**
  * Convert an instance of WebscrapeRequest to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


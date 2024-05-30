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
import io.swagger.annotations.ApiModel;
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * Used to filter the kind of files (e.g. &#x60;TEXT&#x60; or &#x60;IMAGE&#x60;) over which to perform the search. Also         plays a role in determining what embedding model is used to embed the query. If &#x60;IMAGE&#x60; is chosen as the media type,         then the embedding model used will be an embedding model that is not text-only, *regardless* of what value is passed         for &#x60;embedding_model&#x60;.
 */
@JsonAdapter(FileContentTypesNullable.Adapter.class)public enum FileContentTypesNullable {
  
  TEXT("TEXT"),
  
  IMAGE("IMAGE"),
  
  AUDIO("AUDIO"),
  
  VIDEO("VIDEO");

  private String value;

  FileContentTypesNullable(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static FileContentTypesNullable fromValue(String value) {
    for (FileContentTypesNullable b : FileContentTypesNullable.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    return null;
  }

  public static class Adapter extends TypeAdapter<FileContentTypesNullable> {
    @Override
    public void write(final JsonWriter jsonWriter, final FileContentTypesNullable enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public FileContentTypesNullable read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return FileContentTypesNullable.fromValue(value);
    }
  }
}


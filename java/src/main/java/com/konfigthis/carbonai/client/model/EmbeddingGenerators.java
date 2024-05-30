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
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * Gets or Sets EmbeddingGenerators
 */
@JsonAdapter(EmbeddingGenerators.Adapter.class)public enum EmbeddingGenerators {
  
  OPENAI("OPENAI"),
  
  AZURE_OPENAI("AZURE_OPENAI"),
  
  AZURE_ADA_LARGE_256("AZURE_ADA_LARGE_256"),
  
  AZURE_ADA_LARGE_1024("AZURE_ADA_LARGE_1024"),
  
  AZURE_ADA_LARGE_3072("AZURE_ADA_LARGE_3072"),
  
  AZURE_ADA_SMALL_512("AZURE_ADA_SMALL_512"),
  
  AZURE_ADA_SMALL_1536("AZURE_ADA_SMALL_1536"),
  
  COHERE_MULTILINGUAL_V3("COHERE_MULTILINGUAL_V3"),
  
  VERTEX_MULTIMODAL("VERTEX_MULTIMODAL"),
  
  OPENAI_ADA_LARGE_256("OPENAI_ADA_LARGE_256"),
  
  OPENAI_ADA_LARGE_1024("OPENAI_ADA_LARGE_1024"),
  
  OPENAI_ADA_LARGE_3072("OPENAI_ADA_LARGE_3072"),
  
  OPENAI_ADA_SMALL_512("OPENAI_ADA_SMALL_512"),
  
  OPENAI_ADA_SMALL_1536("OPENAI_ADA_SMALL_1536"),
  
  SOLAR_1_MINI("SOLAR_1_MINI");

  private String value;

  EmbeddingGenerators(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static EmbeddingGenerators fromValue(String value) {
    for (EmbeddingGenerators b : EmbeddingGenerators.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

  public static class Adapter extends TypeAdapter<EmbeddingGenerators> {
    @Override
    public void write(final JsonWriter jsonWriter, final EmbeddingGenerators enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public EmbeddingGenerators read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return EmbeddingGenerators.fromValue(value);
    }
  }
}


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
 * Gets or Sets AccountsOrderByNullable
 */
@JsonAdapter(AccountsOrderByNullable.Adapter.class)public enum AccountsOrderByNullable {
  
  CREATED_AT("created_at"),
  
  UPDATED_AT("updated_at"),
  
  NUMBER_OF_EMPLOYEES("number_of_employees"),
  
  NAME("name"),
  
  LAST_ACTIVITY_AT("last_activity_at");

  private String value;

  AccountsOrderByNullable(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static AccountsOrderByNullable fromValue(String value) {
    for (AccountsOrderByNullable b : AccountsOrderByNullable.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    return null;
  }

  public static class Adapter extends TypeAdapter<AccountsOrderByNullable> {
    @Override
    public void write(final JsonWriter jsonWriter, final AccountsOrderByNullable enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public AccountsOrderByNullable read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return AccountsOrderByNullable.fromValue(value);
    }
  }
}

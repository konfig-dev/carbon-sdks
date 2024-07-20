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


package com.konfigthis.carbonai.client.api;

import com.konfigthis.carbonai.client.ApiException;
import com.konfigthis.carbonai.client.ApiClient;
import com.konfigthis.carbonai.client.ApiException;
import com.konfigthis.carbonai.client.Configuration;
import com.konfigthis.carbonai.client.model.DataSourceConfiguration;
import com.konfigthis.carbonai.client.model.GenericSuccessResponse;
import com.konfigthis.carbonai.client.model.OrganizationResponse;
import com.konfigthis.carbonai.client.model.UpdateOrganizationInput;
import com.konfigthis.carbonai.client.model.UserConfigurationNullable;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for OrganizationsApi
 */
@Disabled
public class OrganizationsApiTest {

    private static OrganizationsApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new OrganizationsApi(apiClient);
    }

    /**
     * Get Organization
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getTest() throws ApiException {
        OrganizationResponse response = api.get()
                .execute();
        // TODO: test validations
    }

    /**
     * Update Organization
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void updateTest() throws ApiException {
        UserConfigurationNullable globalUserConfig = null;
        Map<String, DataSourceConfiguration> dataSourceConfigs = null;
        GenericSuccessResponse response = api.update()
                .globalUserConfig(globalUserConfig)
                .dataSourceConfigs(dataSourceConfigs)
                .execute();
        // TODO: test validations
    }

    /**
     * Update Organization Statistics
     *
     * Use this endpoint to reaggregate the statistics for an organization, for example aggregate_file_size. The reaggregation process is asyncronous so a webhook will be sent with the event type being FILE_STATISTICS_AGGREGATED to notify when the process is complee. After this aggregation is complete, the updated statistics can be retrieved using the /organization endpoint. The response of /organization willalso contain a timestamp of the last time the statistics were reaggregated.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void updateStatsTest() throws ApiException {
        GenericSuccessResponse response = api.updateStats()
                .execute();
        // TODO: test validations
    }

}

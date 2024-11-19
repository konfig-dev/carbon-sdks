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
import com.konfigthis.carbonai.client.model.CommentsInput;
import com.konfigthis.carbonai.client.model.CommentsOrderBy;
import com.konfigthis.carbonai.client.model.CommentsResponse;
import com.konfigthis.carbonai.client.model.CommitsInput;
import com.konfigthis.carbonai.client.model.CommitsResponse;
import com.konfigthis.carbonai.client.model.FilesInput;
import com.konfigthis.carbonai.client.model.FilesResponse;
import com.konfigthis.carbonai.client.model.Issue;
import com.konfigthis.carbonai.client.model.IssuesFilter;
import com.konfigthis.carbonai.client.model.IssuesInput;
import com.konfigthis.carbonai.client.model.IssuesOrderBy;
import com.konfigthis.carbonai.client.model.IssuesResponse;
import com.konfigthis.carbonai.client.model.OrderDirV2Nullable;
import com.konfigthis.carbonai.client.model.PROrderBy;
import com.konfigthis.carbonai.client.model.PullRequestExtended;
import com.konfigthis.carbonai.client.model.PullRequestFilters;
import com.konfigthis.carbonai.client.model.PullRequestResponse;
import com.konfigthis.carbonai.client.model.PullRequestsInput;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for GithubApi
 */
@Disabled
public class GithubApiTest {

    private static GithubApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new GithubApi(apiClient);
    }

    /**
     * Issue
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getIssueTest() throws ApiException {
        Integer issueNumber = null;
        Boolean includeRemoteData = null;
        Integer dataSourceId = null;
        String repository = null;
        Issue response = api.getIssue(issueNumber)
                .includeRemoteData(includeRemoteData)
                .dataSourceId(dataSourceId)
                .repository(repository)
                .execute();
        // TODO: test validations
    }

    /**
     * Issues
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getIssuesTest() throws ApiException {
        Integer dataSourceId = null;
        String repository = null;
        Boolean includeRemoteData = null;
        Integer page = null;
        Integer pageSize = null;
        String nextCursor = null;
        IssuesFilter filters = null;
        IssuesOrderBy orderBy = null;
        OrderDirV2Nullable orderDir = null;
        IssuesResponse response = api.getIssues(dataSourceId, repository)
                .includeRemoteData(includeRemoteData)
                .page(page)
                .pageSize(pageSize)
                .nextCursor(nextCursor)
                .filters(filters)
                .orderBy(orderBy)
                .orderDir(orderDir)
                .execute();
        // TODO: test validations
    }

    /**
     * Get Pr
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getPrTest() throws ApiException {
        Integer pullNumber = null;
        Boolean includeRemoteData = null;
        Integer dataSourceId = null;
        String repository = null;
        PullRequestExtended response = api.getPr(pullNumber)
                .includeRemoteData(includeRemoteData)
                .dataSourceId(dataSourceId)
                .repository(repository)
                .execute();
        // TODO: test validations
    }

    /**
     * Pr Comments
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getPrCommentsTest() throws ApiException {
        Integer dataSourceId = null;
        String repository = null;
        Integer pullNumber = null;
        Boolean includeRemoteData = null;
        Integer page = null;
        Integer pageSize = null;
        String nextCursor = null;
        CommentsOrderBy orderBy = null;
        OrderDirV2Nullable orderDir = null;
        CommentsResponse response = api.getPrComments(dataSourceId, repository, pullNumber)
                .includeRemoteData(includeRemoteData)
                .page(page)
                .pageSize(pageSize)
                .nextCursor(nextCursor)
                .orderBy(orderBy)
                .orderDir(orderDir)
                .execute();
        // TODO: test validations
    }

    /**
     * Pr Commits
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getPrCommitsTest() throws ApiException {
        Integer dataSourceId = null;
        String repository = null;
        Integer pullNumber = null;
        Boolean includeRemoteData = null;
        Integer page = null;
        Integer pageSize = null;
        String nextCursor = null;
        CommitsResponse response = api.getPrCommits(dataSourceId, repository, pullNumber)
                .includeRemoteData(includeRemoteData)
                .page(page)
                .pageSize(pageSize)
                .nextCursor(nextCursor)
                .execute();
        // TODO: test validations
    }

    /**
     * Pr Files
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getPrFilesTest() throws ApiException {
        Integer dataSourceId = null;
        String repository = null;
        Integer pullNumber = null;
        Boolean includeRemoteData = null;
        Integer page = null;
        Integer pageSize = null;
        String nextCursor = null;
        FilesResponse response = api.getPrFiles(dataSourceId, repository, pullNumber)
                .includeRemoteData(includeRemoteData)
                .page(page)
                .pageSize(pageSize)
                .nextCursor(nextCursor)
                .execute();
        // TODO: test validations
    }

    /**
     * Get Prs
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getPullRequestsTest() throws ApiException {
        Integer dataSourceId = null;
        String repository = null;
        Boolean includeRemoteData = null;
        Integer page = null;
        Integer pageSize = null;
        String nextCursor = null;
        PullRequestFilters filters = null;
        PROrderBy orderBy = null;
        OrderDirV2Nullable orderDir = null;
        PullRequestResponse response = api.getPullRequests(dataSourceId, repository)
                .includeRemoteData(includeRemoteData)
                .page(page)
                .pageSize(pageSize)
                .nextCursor(nextCursor)
                .filters(filters)
                .orderBy(orderBy)
                .orderDir(orderDir)
                .execute();
        // TODO: test validations
    }

}
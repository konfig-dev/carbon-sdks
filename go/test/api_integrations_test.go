/*
Carbon

Testing IntegrationsApiService

*/

// Code generated by Konfig (https://konfigthis.com);

package carbon

import (
    "testing"
    // "github.com/stretchr/testify/assert"
    // "github.com/stretchr/testify/require"
    // carbon "github.com/Carbon-for-Developers/carbon-sdks/go"
)

func Test_carbon_IntegrationsApiService(t *testing.T) {

    // configuration := carbon.NewConfiguration()
    // configuration.SetHost("http://127.0.0.1:4010")
    /* 
    configuration.SetAccessToken("AUTHORIZATION")
    configuration.SetApiKey("AUTHORIZATION")
    configuration.SetCustomerId("CUSTOMER_ID")
    client := carbon.NewAPIClient(configuration)
    */

    t.Run("Test IntegrationsApiService ConnectDataSource", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        authentication := *carbon.NewAuthenticationProperty()
        syncOptions := *carbon.NewSyncOptions()
        
        connectDataSourceInput := *carbon.NewConnectDataSourceInput(
            authentication,
        )
        connectDataSourceInput.SetSyncOptions(syncOptions)
        
        request := client.IntegrationsApi.ConnectDataSource(
            connectDataSourceInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ConnectFreshdesk", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        freshDeskConnectRequest := *carbon.NewFreshDeskConnectRequest(
            "null",
            "null",
        )
        freshDeskConnectRequest.SetTags({})
        freshDeskConnectRequest.SetChunkSize(1500)
        freshDeskConnectRequest.SetChunkOverlap(20)
        freshDeskConnectRequest.SetSkipEmbeddingGeneration(false)
        freshDeskConnectRequest.SetEmbeddingModel(null)
        freshDeskConnectRequest.SetGenerateSparseVectors(false)
        freshDeskConnectRequest.SetPrependFilenameToChunks(false)
        freshDeskConnectRequest.SetSyncFilesOnConnection(true)
        
        request := client.IntegrationsApi.ConnectFreshdesk(
            freshDeskConnectRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ConnectGitbook", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        gitbookConnectRequest := *carbon.NewGitbookConnectRequest(
            "null",
            "null",
        )
        gitbookConnectRequest.SetTags({})
        gitbookConnectRequest.SetChunkSize(1500)
        gitbookConnectRequest.SetChunkOverlap(20)
        gitbookConnectRequest.SetSkipEmbeddingGeneration(false)
        gitbookConnectRequest.SetEmbeddingModel(null)
        gitbookConnectRequest.SetGenerateSparseVectors(false)
        gitbookConnectRequest.SetPrependFilenameToChunks(false)
        gitbookConnectRequest.SetSyncFilesOnConnection(true)
        
        request := client.IntegrationsApi.ConnectGitbook(
            gitbookConnectRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService CreateAwsIamUser", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        s3AuthRequest := *carbon.NewS3AuthRequest(
            "null",
            "null",
        )
        
        request := client.IntegrationsApi.CreateAwsIamUser(
            s3AuthRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService GetOauthUrl", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        oAuthURLRequest := *carbon.NewOAuthURLRequest(
            null,
        )
        oAuthURLRequest.SetTags(null)
        oAuthURLRequest.SetScope("null")
        oAuthURLRequest.SetChunkSize(1500)
        oAuthURLRequest.SetChunkOverlap(20)
        oAuthURLRequest.SetSkipEmbeddingGeneration(false)
        oAuthURLRequest.SetEmbeddingModel(null)
        oAuthURLRequest.SetZendeskSubdomain("null")
        oAuthURLRequest.SetMicrosoftTenant("null")
        oAuthURLRequest.SetSharepointSiteName("null")
        oAuthURLRequest.SetConfluenceSubdomain("null")
        oAuthURLRequest.SetGenerateSparseVectors(false)
        oAuthURLRequest.SetPrependFilenameToChunks(false)
        oAuthURLRequest.SetMaxItemsPerChunk(null)
        oAuthURLRequest.SetSalesforceDomain("null")
        oAuthURLRequest.SetSyncFilesOnConnection(true)
        oAuthURLRequest.SetSetPageAsBoundary(false)
        oAuthURLRequest.SetDataSourceId(null)
        oAuthURLRequest.SetConnectingNewAccount(false)
        
        request := client.IntegrationsApi.GetOauthUrl(
            oAuthURLRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListConfluencePages", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        listRequest := *carbon.NewListRequest(
            null,
        )
        listRequest.SetParentId("null")
        
        request := client.IntegrationsApi.ListConfluencePages(
            listRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListDataSourceItems", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        filters := *carbon.NewListItemsFiltersNullable()
        pagination := *carbon.NewPagination()
        
        listDataSourceItemsRequest := *carbon.NewListDataSourceItemsRequest(
            null,
        )
        listDataSourceItemsRequest.SetParentId("null")
        listDataSourceItemsRequest.SetFilters(filters)
        listDataSourceItemsRequest.SetPagination(pagination)
        
        request := client.IntegrationsApi.ListDataSourceItems(
            listDataSourceItemsRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListFolders", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListFolders(
        )
        request.DataSourceId(56)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListGitbookSpaces", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListGitbookSpaces(
            56,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListLabels", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListLabels(
        )
        request.DataSourceId(56)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListOutlookCategories", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListOutlookCategories(
        )
        request.DataSourceId(56)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncConfluence", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        ids := *carbon.NewIdsProperty()
        
        syncFilesRequest := *carbon.NewSyncFilesRequest(
            null,
            ids,
        )
        syncFilesRequest.SetTags({})
        syncFilesRequest.SetChunkSize(1500)
        syncFilesRequest.SetChunkOverlap(20)
        syncFilesRequest.SetSkipEmbeddingGeneration(false)
        syncFilesRequest.SetEmbeddingModel(null)
        syncFilesRequest.SetGenerateSparseVectors(false)
        syncFilesRequest.SetPrependFilenameToChunks(false)
        syncFilesRequest.SetMaxItemsPerChunk(null)
        syncFilesRequest.SetSetPageAsBoundary(false)
        
        request := client.IntegrationsApi.SyncConfluence(
            syncFilesRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncDataSourceItems", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        syncDirectoryRequest := *carbon.NewSyncDirectoryRequest(
            null,
        )
        
        request := client.IntegrationsApi.SyncDataSourceItems(
            syncDirectoryRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncFiles", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        ids := *carbon.NewIdsProperty()
        
        syncFilesRequest := *carbon.NewSyncFilesRequest(
            null,
            ids,
        )
        syncFilesRequest.SetTags({})
        syncFilesRequest.SetChunkSize(1500)
        syncFilesRequest.SetChunkOverlap(20)
        syncFilesRequest.SetSkipEmbeddingGeneration(false)
        syncFilesRequest.SetEmbeddingModel(null)
        syncFilesRequest.SetGenerateSparseVectors(false)
        syncFilesRequest.SetPrependFilenameToChunks(false)
        syncFilesRequest.SetMaxItemsPerChunk(null)
        syncFilesRequest.SetSetPageAsBoundary(false)
        
        request := client.IntegrationsApi.SyncFiles(
            syncFilesRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncGitbook", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        gitbookSyncRequest := *carbon.NewGitbookSyncRequest(
            null,
            null,
        )
        gitbookSyncRequest.SetTags({})
        gitbookSyncRequest.SetChunkSize(1500)
        gitbookSyncRequest.SetChunkOverlap(20)
        gitbookSyncRequest.SetSkipEmbeddingGeneration(false)
        gitbookSyncRequest.SetEmbeddingModel(null)
        gitbookSyncRequest.SetGenerateSparseVectors(false)
        gitbookSyncRequest.SetPrependFilenameToChunks(false)
        
        request := client.IntegrationsApi.SyncGitbook(
            gitbookSyncRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncGmail", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        gmailSyncInput := *carbon.NewGmailSyncInput(
            null,
        )
        gmailSyncInput.SetTags({})
        gmailSyncInput.SetChunkSize(1500)
        gmailSyncInput.SetChunkOverlap(20)
        gmailSyncInput.SetSkipEmbeddingGeneration(false)
        gmailSyncInput.SetEmbeddingModel(null)
        gmailSyncInput.SetGenerateSparseVectors(false)
        gmailSyncInput.SetPrependFilenameToChunks(false)
        gmailSyncInput.SetDataSourceId(null)
        
        request := client.IntegrationsApi.SyncGmail(
            gmailSyncInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncOutlook", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        outlookSyncInput := *carbon.NewOutlookSyncInput(
            null,
        )
        outlookSyncInput.SetTags({})
        outlookSyncInput.SetFolder("Inbox")
        outlookSyncInput.SetChunkSize(1500)
        outlookSyncInput.SetChunkOverlap(20)
        outlookSyncInput.SetSkipEmbeddingGeneration(false)
        outlookSyncInput.SetEmbeddingModel(null)
        outlookSyncInput.SetGenerateSparseVectors(false)
        outlookSyncInput.SetPrependFilenameToChunks(false)
        outlookSyncInput.SetDataSourceId(null)
        
        request := client.IntegrationsApi.SyncOutlook(
            outlookSyncInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncRssFeed", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        rSSFeedInput := *carbon.NewRSSFeedInput(
            "null",
        )
        rSSFeedInput.SetTags({})
        rSSFeedInput.SetChunkSize(1500)
        rSSFeedInput.SetChunkOverlap(20)
        rSSFeedInput.SetSkipEmbeddingGeneration(false)
        rSSFeedInput.SetEmbeddingModel(null)
        rSSFeedInput.SetGenerateSparseVectors(false)
        rSSFeedInput.SetPrependFilenameToChunks(false)
        
        request := client.IntegrationsApi.SyncRssFeed(
            rSSFeedInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncS3Files", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        s3FileSyncInput := *carbon.NewS3FileSyncInput(
            null,
        )
        s3FileSyncInput.SetTags({})
        s3FileSyncInput.SetChunkSize(1500)
        s3FileSyncInput.SetChunkOverlap(20)
        s3FileSyncInput.SetSkipEmbeddingGeneration(false)
        s3FileSyncInput.SetEmbeddingModel(null)
        s3FileSyncInput.SetGenerateSparseVectors(false)
        s3FileSyncInput.SetPrependFilenameToChunks(false)
        s3FileSyncInput.SetMaxItemsPerChunk(null)
        s3FileSyncInput.SetSetPageAsBoundary(false)
        s3FileSyncInput.SetDataSourceId(null)
        
        request := client.IntegrationsApi.SyncS3Files(
            s3FileSyncInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

}
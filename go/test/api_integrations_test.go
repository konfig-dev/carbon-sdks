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

    t.Run("Test IntegrationsApiService Cancel", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        syncDirectoryRequest := *carbon.NewSyncDirectoryRequest(
            null,
        )
        
        request := client.IntegrationsApi.Cancel(
            syncDirectoryRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ConnectDataSource", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        authentication := *carbon.NewOANDSCZGFB()
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

    t.Run("Test IntegrationsApiService ConnectDocument360", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
        document360ConnectRequest := *carbon.NewDocument360ConnectRequest(
            "null",
            "null",
        )
        document360ConnectRequest.SetTags({})
        document360ConnectRequest.SetChunkSize(1500)
        document360ConnectRequest.SetChunkOverlap(20)
        document360ConnectRequest.SetSkipEmbeddingGeneration(false)
        document360ConnectRequest.SetEmbeddingModel(null)
        document360ConnectRequest.SetGenerateSparseVectors(false)
        document360ConnectRequest.SetPrependFilenameToChunks(false)
        document360ConnectRequest.SetSyncFilesOnConnection(true)
        document360ConnectRequest.SetRequestId("null")
        document360ConnectRequest.SetSyncSourceItems(true)
        document360ConnectRequest.SetFileSyncConfig(fileSyncConfig)
        document360ConnectRequest.SetDataSourceTags({})
        
        request := client.IntegrationsApi.ConnectDocument360(
            document360ConnectRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ConnectFreshdesk", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
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
        freshDeskConnectRequest.SetRequestId("null")
        freshDeskConnectRequest.SetSyncSourceItems(true)
        freshDeskConnectRequest.SetFileSyncConfig(fileSyncConfig)
        freshDeskConnectRequest.SetDataSourceTags({})
        
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
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
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
        gitbookConnectRequest.SetRequestId("null")
        gitbookConnectRequest.SetSyncSourceItems(true)
        gitbookConnectRequest.SetFileSyncConfig(fileSyncConfig)
        gitbookConnectRequest.SetDataSourceTags({})
        
        request := client.IntegrationsApi.ConnectGitbook(
            gitbookConnectRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ConnectGuru", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
        guruConnectRequest := *carbon.NewGuruConnectRequest(
            "null",
            "null",
        )
        guruConnectRequest.SetTags({})
        guruConnectRequest.SetChunkSize(1500)
        guruConnectRequest.SetChunkOverlap(20)
        guruConnectRequest.SetSkipEmbeddingGeneration(false)
        guruConnectRequest.SetEmbeddingModel(null)
        guruConnectRequest.SetGenerateSparseVectors(false)
        guruConnectRequest.SetPrependFilenameToChunks(false)
        guruConnectRequest.SetSyncFilesOnConnection(true)
        guruConnectRequest.SetRequestId("null")
        guruConnectRequest.SetSyncSourceItems(true)
        guruConnectRequest.SetFileSyncConfig(fileSyncConfig)
        guruConnectRequest.SetDataSourceTags({})
        
        request := client.IntegrationsApi.ConnectGuru(
            guruConnectRequest,
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
        s3AuthRequest.SetSyncSourceItems(true)
        s3AuthRequest.SetEndpointUrl("null")
        s3AuthRequest.SetDataSourceTags({})
        
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
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        servicenowCredentials := *carbon.NewServiceNowCredentialsNullable()
        
        oAuthURLRequest := *carbon.NewOAuthURLRequest(
            null,
        )
        oAuthURLRequest.SetTags(null)
        oAuthURLRequest.SetScope("null")
        oAuthURLRequest.SetScopes([])
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
        oAuthURLRequest.SetRequestId("null")
        oAuthURLRequest.SetUseOcr(false)
        oAuthURLRequest.SetParsePdfTablesWithOcr(false)
        oAuthURLRequest.SetEnableFilePicker(true)
        oAuthURLRequest.SetSyncSourceItems(true)
        oAuthURLRequest.SetIncrementalSync(false)
        oAuthURLRequest.SetFileSyncConfig(fileSyncConfig)
        oAuthURLRequest.SetAutomaticallyOpenFilePicker(null)
        oAuthURLRequest.SetGongAccountEmail("null")
        oAuthURLRequest.SetServicenowCredentials(servicenowCredentials)
        oAuthURLRequest.SetDataSourceTags({})
        
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

    t.Run("Test IntegrationsApiService ListConversations", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListConversations(
        )
        request.Types(""public_channel"")
        request.Cursor("cursor_example")
        request.DataSourceId(56)
        request.ExcludeArchived(true)
        
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
        listDataSourceItemsRequest.SetOrderBy(null)
        listDataSourceItemsRequest.SetOrderDir(null)
        
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

    t.Run("Test IntegrationsApiService ListRepos", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListRepos(
        )
        request.PerPage(30)
        request.Page(1)
        request.DataSourceId(56)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService ListSharepointSites", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.IntegrationsApi.ListSharepointSites(
        )
        request.DataSourceId(56)
        request.Cursor("cursor_example")
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncAzureBlobFiles", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
        azureBlobFileSyncInput := *carbon.NewAzureBlobFileSyncInput(
            null,
        )
        azureBlobFileSyncInput.SetTags({})
        azureBlobFileSyncInput.SetChunkSize(1500)
        azureBlobFileSyncInput.SetChunkOverlap(20)
        azureBlobFileSyncInput.SetSkipEmbeddingGeneration(false)
        azureBlobFileSyncInput.SetEmbeddingModel(null)
        azureBlobFileSyncInput.SetGenerateSparseVectors(false)
        azureBlobFileSyncInput.SetPrependFilenameToChunks(false)
        azureBlobFileSyncInput.SetMaxItemsPerChunk(null)
        azureBlobFileSyncInput.SetSetPageAsBoundary(false)
        azureBlobFileSyncInput.SetDataSourceId(null)
        azureBlobFileSyncInput.SetRequestId("null")
        azureBlobFileSyncInput.SetUseOcr(false)
        azureBlobFileSyncInput.SetParsePdfTablesWithOcr(false)
        azureBlobFileSyncInput.SetFileSyncConfig(fileSyncConfig)
        
        request := client.IntegrationsApi.SyncAzureBlobFiles(
            azureBlobFileSyncInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncAzureBlobStorage", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        azureBlobAuthRequest := *carbon.NewAzureBlobAuthRequest(
            "null",
            "null",
        )
        azureBlobAuthRequest.SetSyncSourceItems(true)
        azureBlobAuthRequest.SetDataSourceTags({})
        
        request := client.IntegrationsApi.SyncAzureBlobStorage(
            azureBlobAuthRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncConfluence", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
        syncFilesRequest := *carbon.NewSyncFilesRequest(
            null,
            null,
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
        syncFilesRequest.SetRequestId("null")
        syncFilesRequest.SetUseOcr(false)
        syncFilesRequest.SetParsePdfTablesWithOcr(false)
        syncFilesRequest.SetIncrementalSync(false)
        syncFilesRequest.SetFileSyncConfig(fileSyncConfig)
        
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
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
        syncFilesRequest := *carbon.NewSyncFilesRequest(
            null,
            null,
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
        syncFilesRequest.SetRequestId("null")
        syncFilesRequest.SetUseOcr(false)
        syncFilesRequest.SetParsePdfTablesWithOcr(false)
        syncFilesRequest.SetIncrementalSync(false)
        syncFilesRequest.SetFileSyncConfig(fileSyncConfig)
        
        request := client.IntegrationsApi.SyncFiles(
            syncFilesRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncGitHub", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        githubConnectRequest := *carbon.NewGithubConnectRequest(
            "null",
            "null",
        )
        githubConnectRequest.SetSyncSourceItems(false)
        githubConnectRequest.SetDataSourceTags({})
        
        request := client.IntegrationsApi.SyncGitHub(
            githubConnectRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncGitbook", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
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
        gitbookSyncRequest.SetRequestId("null")
        gitbookSyncRequest.SetFileSyncConfig(fileSyncConfig)
        
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
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
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
        gmailSyncInput.SetRequestId("null")
        gmailSyncInput.SetSyncAttachments(false)
        gmailSyncInput.SetFileSyncConfig(fileSyncConfig)
        gmailSyncInput.SetIncrementalSync(false)
        
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
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
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
        outlookSyncInput.SetRequestId("null")
        outlookSyncInput.SetSyncAttachments(false)
        outlookSyncInput.SetFileSyncConfig(fileSyncConfig)
        outlookSyncInput.SetIncrementalSync(false)
        
        request := client.IntegrationsApi.SyncOutlook(
            outlookSyncInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncRepos", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        githubFetchReposRequest := *carbon.NewGithubFetchReposRequest(
            null,
        )
        githubFetchReposRequest.SetDataSourceId(null)
        
        request := client.IntegrationsApi.SyncRepos(
            githubFetchReposRequest,
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
        rSSFeedInput.SetRequestId("null")
        rSSFeedInput.SetDataSourceTags({})
        
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
        fileSyncConfig := *carbon.NewFileSyncConfigNullable()
        
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
        s3FileSyncInput.SetRequestId("null")
        s3FileSyncInput.SetUseOcr(false)
        s3FileSyncInput.SetParsePdfTablesWithOcr(false)
        s3FileSyncInput.SetFileSyncConfig(fileSyncConfig)
        
        request := client.IntegrationsApi.SyncS3Files(
            s3FileSyncInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test IntegrationsApiService SyncSlack", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        filters := *carbon.NewSlackFilters()
        
        slackSyncRequest := *carbon.NewSlackSyncRequest(
            filters,
        )
        slackSyncRequest.SetTags({})
        slackSyncRequest.SetChunkSize(1500)
        slackSyncRequest.SetChunkOverlap(20)
        slackSyncRequest.SetSkipEmbeddingGeneration(false)
        slackSyncRequest.SetEmbeddingModel(null)
        slackSyncRequest.SetGenerateSparseVectors(false)
        slackSyncRequest.SetPrependFilenameToChunks(false)
        slackSyncRequest.SetDataSourceId(null)
        slackSyncRequest.SetRequestId("null")
        
        request := client.IntegrationsApi.SyncSlack(
            slackSyncRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

}
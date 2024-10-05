/*
Carbon

Testing FilesApiService

*/

// Code generated by Konfig (https://konfigthis.com);

package carbon

import (
    "testing"
    // "github.com/stretchr/testify/assert"
    // "github.com/stretchr/testify/require"
    // carbon "github.com/Carbon-for-Developers/carbon-sdks/go"
)

func Test_carbon_FilesApiService(t *testing.T) {

    // configuration := carbon.NewConfiguration()
    // configuration.SetHost("http://127.0.0.1:4010")
    /* 
    configuration.SetAccessToken("AUTHORIZATION")
    configuration.SetApiKey("AUTHORIZATION")
    configuration.SetCustomerId("CUSTOMER_ID")
    client := carbon.NewAPIClient(configuration)
    */

    t.Run("Test FilesApiService CreateUserFileTags", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        organizationUserFileTagCreate := *carbon.NewOrganizationUserFileTagCreate(
            null,
            null,
        )
        
        request := client.FilesApi.CreateUserFileTags(
            organizationUserFileTagCreate,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService Delete", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.FilesApi.Delete(
            56,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService DeleteFileTags", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        organizationUserFileTagsRemove := *carbon.NewOrganizationUserFileTagsRemove(
            null,
            null,
        )
        
        request := client.FilesApi.DeleteFileTags(
            organizationUserFileTagsRemove,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService DeleteMany", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        deleteFilesQueryInput := *carbon.NewDeleteFilesQueryInput()
        deleteFilesQueryInput.SetFileIds(null)
        deleteFilesQueryInput.SetSyncStatuses(null)
        deleteFilesQueryInput.SetDeleteNonSyncedOnly(false)
        deleteFilesQueryInput.SetSendWebhook(false)
        deleteFilesQueryInput.SetDeleteChildFiles(false)
        
        request := client.FilesApi.DeleteMany(
            deleteFilesQueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService DeleteV2", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        filters := *carbon.NewOrganizationUserFilesToSyncFilters()
        
        deleteFilesV2QueryInput := *carbon.NewDeleteFilesV2QueryInput()
        deleteFilesV2QueryInput.SetFilters(filters)
        deleteFilesV2QueryInput.SetSendWebhook(false)
        deleteFilesV2QueryInput.SetPreserveFileRecord(false)
        
        request := client.FilesApi.DeleteV2(
            deleteFilesV2QueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService GetParsedFile", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.FilesApi.GetParsedFile(
            56,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService GetRawFile", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.FilesApi.GetRawFile(
            56,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService ModifyColdStorageParameters", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        filters := *carbon.NewOrganizationUserFilesToSyncFilters()
        
        modifyColdStorageParametersQueryInput := *carbon.NewModifyColdStorageParametersQueryInput()
        modifyColdStorageParametersQueryInput.SetFilters(filters)
        modifyColdStorageParametersQueryInput.SetEnableColdStorage(null)
        modifyColdStorageParametersQueryInput.SetHotStorageTimeToLive(null)
        
        request := client.FilesApi.ModifyColdStorageParameters(
            modifyColdStorageParametersQueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService MoveToHotStorage", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        filters := *carbon.NewOrganizationUserFilesToSyncFilters()
        
        moveToHotStorageQueryInput := *carbon.NewMoveToHotStorageQueryInput()
        moveToHotStorageQueryInput.SetFilters(filters)
        
        request := client.FilesApi.MoveToHotStorage(
            moveToHotStorageQueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService QueryUserFiles", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        pagination := *carbon.NewPagination()
        filters := *carbon.NewOrganizationUserFilesToSyncFilters()
        
        organizationUserFilesToSyncQueryInput := *carbon.NewOrganizationUserFilesToSyncQueryInput()
        organizationUserFilesToSyncQueryInput.SetPagination(pagination)
        organizationUserFilesToSyncQueryInput.SetOrderBy(null)
        organizationUserFilesToSyncQueryInput.SetOrderDir(null)
        organizationUserFilesToSyncQueryInput.SetFilters(filters)
        organizationUserFilesToSyncQueryInput.SetIncludeRawFile(null)
        organizationUserFilesToSyncQueryInput.SetIncludeParsedTextFile(null)
        organizationUserFilesToSyncQueryInput.SetIncludeAdditionalFiles(null)
        
        request := client.FilesApi.QueryUserFiles(
            organizationUserFilesToSyncQueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService QueryUserFilesDeprecated", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        pagination := *carbon.NewPagination()
        filters := *carbon.NewOrganizationUserFilesToSyncFilters()
        
        organizationUserFilesToSyncQueryInput := *carbon.NewOrganizationUserFilesToSyncQueryInput()
        organizationUserFilesToSyncQueryInput.SetPagination(pagination)
        organizationUserFilesToSyncQueryInput.SetOrderBy(null)
        organizationUserFilesToSyncQueryInput.SetOrderDir(null)
        organizationUserFilesToSyncQueryInput.SetFilters(filters)
        organizationUserFilesToSyncQueryInput.SetIncludeRawFile(null)
        organizationUserFilesToSyncQueryInput.SetIncludeParsedTextFile(null)
        organizationUserFilesToSyncQueryInput.SetIncludeAdditionalFiles(null)
        
        request := client.FilesApi.QueryUserFilesDeprecated(
            organizationUserFilesToSyncQueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService Resync", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        resyncFileQueryInput := *carbon.NewResyncFileQueryInput(
            null,
        )
        resyncFileQueryInput.SetChunkSize(null)
        resyncFileQueryInput.SetChunkOverlap(null)
        resyncFileQueryInput.SetForceEmbeddingGeneration(false)
        resyncFileQueryInput.SetSkipFileProcessing(false)
        
        request := client.FilesApi.Resync(
            resyncFileQueryInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService Upload", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        bodyCreateUploadFileUploadfilePost := *carbon.NewBodyCreateUploadFileUploadfilePost(
            os.NewFile(1234, "some_file"),
        )
        
        request := client.FilesApi.Upload(
            os.NewFile(1234, "some_file"),
            bodyCreateUploadFileUploadfilePost,
        )
        request.ChunkSize(56)
        request.ChunkOverlap(56)
        request.SkipEmbeddingGeneration(false)
        request.SetPageAsBoundary(false)
        request.EmbeddingModel()
        request.UseOcr(false)
        request.GenerateSparseVectors(false)
        request.PrependFilenameToChunks(false)
        request.MaxItemsPerChunk(56)
        request.ParsePdfTablesWithOcr(false)
        request.DetectAudioLanguage(false)
        request.TranscriptionService()
        request.IncludeSpeakerLabels(false)
        request.MediaType()
        request.SplitRows(false)
        request.EnableColdStorage(false)
        request.HotStorageTimeToLive(56)
        request.GenerateChunksOnly(false)
        request.StoreFileOnly(false)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService UploadFromUrl", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        coldStorageParams := *carbon.NewColdStorageProps()
        
        uploadFileFromUrlInput := *carbon.NewUploadFileFromUrlInput(
            "null",
        )
        uploadFileFromUrlInput.SetFileName("null")
        uploadFileFromUrlInput.SetChunkSize(null)
        uploadFileFromUrlInput.SetChunkOverlap(null)
        uploadFileFromUrlInput.SetSkipEmbeddingGeneration(false)
        uploadFileFromUrlInput.SetSetPageAsBoundary(false)
        uploadFileFromUrlInput.SetEmbeddingModel(null)
        uploadFileFromUrlInput.SetGenerateSparseVectors(false)
        uploadFileFromUrlInput.SetUseTextract(false)
        uploadFileFromUrlInput.SetPrependFilenameToChunks(false)
        uploadFileFromUrlInput.SetMaxItemsPerChunk(null)
        uploadFileFromUrlInput.SetParsePdfTablesWithOcr(false)
        uploadFileFromUrlInput.SetDetectAudioLanguage(false)
        uploadFileFromUrlInput.SetTranscriptionService(null)
        uploadFileFromUrlInput.SetIncludeSpeakerLabels(false)
        uploadFileFromUrlInput.SetMediaType(null)
        uploadFileFromUrlInput.SetSplitRows(false)
        uploadFileFromUrlInput.SetColdStorageParams(coldStorageParams)
        uploadFileFromUrlInput.SetGenerateChunksOnly(false)
        uploadFileFromUrlInput.SetStoreFileOnly(false)
        
        request := client.FilesApi.UploadFromUrl(
            uploadFileFromUrlInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test FilesApiService UploadText", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        coldStorageParams := *carbon.NewColdStorageProps()
        
        rawTextInput := *carbon.NewRawTextInput(
            "null",
        )
        rawTextInput.SetName("null")
        rawTextInput.SetChunkSize(null)
        rawTextInput.SetChunkOverlap(null)
        rawTextInput.SetSkipEmbeddingGeneration(false)
        rawTextInput.SetOverwriteFileId(null)
        rawTextInput.SetEmbeddingModel(null)
        rawTextInput.SetGenerateSparseVectors(false)
        rawTextInput.SetColdStorageParams(coldStorageParams)
        rawTextInput.SetGenerateChunksOnly(false)
        rawTextInput.SetStoreFileOnly(false)
        
        request := client.FilesApi.UploadText(
            rawTextInput,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

}
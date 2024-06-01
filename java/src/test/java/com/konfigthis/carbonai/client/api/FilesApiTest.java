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
import com.konfigthis.carbonai.client.model.BodyCreateUploadFileUploadfilePost;
import com.konfigthis.carbonai.client.model.DeleteFilesQueryInput;
import com.konfigthis.carbonai.client.model.DeleteFilesV2QueryInput;
import com.konfigthis.carbonai.client.model.EmbeddingGenerators;
import com.konfigthis.carbonai.client.model.EmbeddingGeneratorsNullable;
import com.konfigthis.carbonai.client.model.ExternalFileSyncStatuses;
import java.io.File;
import com.konfigthis.carbonai.client.model.FileContentTypesNullable;
import com.konfigthis.carbonai.client.model.GenericSuccessResponse;
import com.konfigthis.carbonai.client.model.OrderDir;
import com.konfigthis.carbonai.client.model.OrganizationUserFileTagCreate;
import com.konfigthis.carbonai.client.model.OrganizationUserFileTagsRemove;
import com.konfigthis.carbonai.client.model.OrganizationUserFilesToSyncFilters;
import com.konfigthis.carbonai.client.model.OrganizationUserFilesToSyncOrderByTypes;
import com.konfigthis.carbonai.client.model.OrganizationUserFilesToSyncQueryInput;
import com.konfigthis.carbonai.client.model.Pagination;
import com.konfigthis.carbonai.client.model.PresignedURLResponse;
import com.konfigthis.carbonai.client.model.RawTextInput;
import com.konfigthis.carbonai.client.model.ResyncFileQueryInput;
import com.konfigthis.carbonai.client.model.TMEmbeddingGenerators;
import com.konfigthis.carbonai.client.model.UploadFileFromUrlInput;
import com.konfigthis.carbonai.client.model.UserFile;
import com.konfigthis.carbonai.client.model.UserFilesV2;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for FilesApi
 */
@Disabled
public class FilesApiTest {

    private static FilesApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new FilesApi(apiClient);
    }

    /**
     * Create File Tags
     *
     * A tag is a key-value pair that can be added to a file. This pair can then be used for searches (e.g. embedding searches) in order to narrow down the scope of the search. A file can have any number of tags. The following are reserved keys that cannot be used: - db_embedding_id - organization_id - user_id - organization_user_file_id  Carbon currently supports two data types for tag values - &#x60;string&#x60; and &#x60;list&lt;string&gt;&#x60;. Keys can only be &#x60;string&#x60;. If values other than &#x60;string&#x60; and &#x60;list&lt;string&gt;&#x60; are used, they&#39;re automatically converted to strings (e.g. 4 will become \&quot;4\&quot;).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void createUserFileTagsTest() throws ApiException {
        Map<String, Object> tags = null;
        Integer organizationUserFileId = null;
        UserFile response = api.createUserFileTags(tags, organizationUserFileId)
                .execute();
        // TODO: test validations
    }

    /**
     * Delete File Endpoint
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void deleteTest() throws ApiException {
        Integer fileId = null;
        GenericSuccessResponse response = api.delete(fileId)
                .execute();
        // TODO: test validations
    }

    /**
     * Delete File Tags
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void deleteFileTagsTest() throws ApiException {
        List<String> tags = null;
        Integer organizationUserFileId = null;
        UserFile response = api.deleteFileTags(tags, organizationUserFileId)
                .execute();
        // TODO: test validations
    }

    /**
     * Delete Files Endpoint
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void deleteManyTest() throws ApiException {
        List<Integer> fileIds = null;
        List<ExternalFileSyncStatuses> syncStatuses = null;
        Boolean deleteNonSyncedOnly = null;
        Boolean sendWebhook = null;
        Boolean deleteChildFiles = null;
        GenericSuccessResponse response = api.deleteMany()
                .fileIds(fileIds)
                .syncStatuses(syncStatuses)
                .deleteNonSyncedOnly(deleteNonSyncedOnly)
                .sendWebhook(sendWebhook)
                .deleteChildFiles(deleteChildFiles)
                .execute();
        // TODO: test validations
    }

    /**
     * Delete Files V2 Endpoint
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void deleteV2Test() throws ApiException {
        OrganizationUserFilesToSyncFilters filters = null;
        Boolean sendWebhook = null;
        GenericSuccessResponse response = api.deleteV2()
                .filters(filters)
                .sendWebhook(sendWebhook)
                .execute();
        // TODO: test validations
    }

    /**
     * Parsed File
     *
     * This route is deprecated. Use &#x60;/user_files_v2&#x60; instead.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getParsedFileTest() throws ApiException {
        Integer fileId = null;
        PresignedURLResponse response = api.getParsedFile(fileId)
                .execute();
        // TODO: test validations
    }

    /**
     * Raw File
     *
     * This route is deprecated. Use &#x60;/user_files_v2&#x60; instead.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getRawFileTest() throws ApiException {
        Integer fileId = null;
        PresignedURLResponse response = api.getRawFile(fileId)
                .execute();
        // TODO: test validations
    }

    /**
     * User Files V2
     *
     * For pre-filtering documents, using &#x60;tags_v2&#x60; is preferred to using &#x60;tags&#x60; (which is now deprecated). If both &#x60;tags_v2&#x60; and &#x60;tags&#x60; are specified, &#x60;tags&#x60; is ignored. &#x60;tags_v2&#x60; enables building complex filters through the use of \&quot;AND\&quot;, \&quot;OR\&quot;, and negation logic. Take the below input as an example: &#x60;&#x60;&#x60;json {     \&quot;OR\&quot;: [         {             \&quot;key\&quot;: \&quot;subject\&quot;,             \&quot;value\&quot;: \&quot;holy-bible\&quot;,             \&quot;negate\&quot;: false         },         {             \&quot;key\&quot;: \&quot;person-of-interest\&quot;,             \&quot;value\&quot;: \&quot;jesus christ\&quot;,             \&quot;negate\&quot;: false         },         {             \&quot;key\&quot;: \&quot;genre\&quot;,             \&quot;value\&quot;: \&quot;religion\&quot;,             \&quot;negate\&quot;: true         }         {             \&quot;AND\&quot;: [                 {                     \&quot;key\&quot;: \&quot;subject\&quot;,                     \&quot;value\&quot;: \&quot;tao-te-ching\&quot;,                     \&quot;negate\&quot;: false                 },                 {                     \&quot;key\&quot;: \&quot;author\&quot;,                     \&quot;value\&quot;: \&quot;lao-tzu\&quot;,                     \&quot;negate\&quot;: false                 }             ]         }     ] } &#x60;&#x60;&#x60; In this case, files will be filtered such that: 1. \&quot;subject\&quot; &#x3D; \&quot;holy-bible\&quot; OR 2. \&quot;person-of-interest\&quot; &#x3D; \&quot;jesus christ\&quot; OR 3. \&quot;genre\&quot; !&#x3D; \&quot;religion\&quot; OR 4. \&quot;subject\&quot; &#x3D; \&quot;tao-te-ching\&quot; AND \&quot;author\&quot; &#x3D; \&quot;lao-tzu\&quot;  Note that the top level of the query must be either an \&quot;OR\&quot; or \&quot;AND\&quot; array. Currently, nesting is limited to 3. For tag blocks (those with \&quot;key\&quot;, \&quot;value\&quot;, and \&quot;negate\&quot; keys), the following typing rules apply: 1. \&quot;key\&quot; isn&#39;t optional and must be a &#x60;string&#x60; 2. \&quot;value\&quot; isn&#39;t optional and can be &#x60;any&#x60; or list[&#x60;any&#x60;] 3. \&quot;negate\&quot; is optional and must be &#x60;true&#x60; or &#x60;false&#x60;. If present and &#x60;true&#x60;, then the filter block is negated in the resulting query. It is &#x60;false&#x60; by default.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void queryUserFilesTest() throws ApiException {
        Pagination pagination = null;
        OrganizationUserFilesToSyncOrderByTypes orderBy = null;
        OrderDir orderDir = null;
        OrganizationUserFilesToSyncFilters filters = null;
        Boolean includeRawFile = null;
        Boolean includeParsedTextFile = null;
        Boolean includeAdditionalFiles = null;
        UserFilesV2 response = api.queryUserFiles()
                .pagination(pagination)
                .orderBy(orderBy)
                .orderDir(orderDir)
                .filters(filters)
                .includeRawFile(includeRawFile)
                .includeParsedTextFile(includeParsedTextFile)
                .includeAdditionalFiles(includeAdditionalFiles)
                .execute();
        // TODO: test validations
    }

    /**
     * User Files
     *
     * This route is deprecated. Use &#x60;/user_files_v2&#x60; instead.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void queryUserFilesDeprecatedTest() throws ApiException {
        Pagination pagination = null;
        OrganizationUserFilesToSyncOrderByTypes orderBy = null;
        OrderDir orderDir = null;
        OrganizationUserFilesToSyncFilters filters = null;
        Boolean includeRawFile = null;
        Boolean includeParsedTextFile = null;
        Boolean includeAdditionalFiles = null;
        List<UserFile> response = api.queryUserFilesDeprecated()
                .pagination(pagination)
                .orderBy(orderBy)
                .orderDir(orderDir)
                .filters(filters)
                .includeRawFile(includeRawFile)
                .includeParsedTextFile(includeParsedTextFile)
                .includeAdditionalFiles(includeAdditionalFiles)
                .execute();
        // TODO: test validations
    }

    /**
     * Resync File
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void resyncTest() throws ApiException {
        Integer fileId = null;
        Integer chunkSize = null;
        Integer chunkOverlap = null;
        Boolean forceEmbeddingGeneration = null;
        UserFile response = api.resync(fileId)
                .chunkSize(chunkSize)
                .chunkOverlap(chunkOverlap)
                .forceEmbeddingGeneration(forceEmbeddingGeneration)
                .execute();
        // TODO: test validations
    }

    /**
     * Create Upload File
     *
     * This endpoint is used to directly upload local files to Carbon. The &#x60;POST&#x60; request should be a multipart form request. Note that the &#x60;set_page_as_boundary&#x60; query parameter is applicable only to PDFs for now. When this value is set, PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description of all possible query parameters: - &#x60;chunk_size&#x60;: the chunk size (in tokens) applied when splitting the document - &#x60;chunk_overlap&#x60;: the chunk overlap (in tokens) applied when splitting the document - &#x60;skip_embedding_generation&#x60;: whether or not to skip the generation of chunks and embeddings - &#x60;set_page_as_boundary&#x60;: described above - &#x60;embedding_model&#x60;: the model used to generate embeddings for the document chunks - &#x60;use_ocr&#x60;: whether or not to use OCR as a preprocessing step prior to generating chunks (only valid for PDFs currently) - &#x60;generate_sparse_vectors&#x60;: whether or not to generate sparse vectors for the file. Required for hybrid search. - &#x60;prepend_filename_to_chunks&#x60;: whether or not to prepend the filename to the chunk text   Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI&#39;s multimodal model; for text, we support OpenAI&#39;s &#x60;text-embedding-ada-002&#x60; and Cohere&#39;s embed-multilingual-v3.0. The model can be specified via the &#x60;embedding_model&#x60; parameter (in the POST body for &#x60;/embeddings&#x60;, and a query  parameter in &#x60;/uploadfile&#x60;). If no model is supplied, the &#x60;text-embedding-ada-002&#x60; is used by default. When performing embedding queries, embeddings from files that used the specified model will be considered in the query. For example, if files A and B have embeddings generated with &#x60;OPENAI&#x60;, and files C and D have embeddings generated with &#x60;COHERE_MULTILINGUAL_V3&#x60;, then by default, queries will only consider files A and B. If &#x60;COHERE_MULTILINGUAL_V3&#x60; is specified as the &#x60;embedding_model&#x60; in &#x60;/embeddings&#x60;, then only files C and D will be considered. Make sure that the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not** set &#x60;VERTEX_MULTIMODAL&#x60; as an &#x60;embedding_model&#x60;. This model is used automatically by Carbon when it detects an image file.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void uploadTest() throws ApiException {
        File _file = null;
        Integer chunkSize = null;
        Integer chunkOverlap = null;
        Boolean skipEmbeddingGeneration = null;
        Boolean setPageAsBoundary = null;
        TMEmbeddingGenerators embeddingModel = null;
        Boolean useOcr = null;
        Boolean generateSparseVectors = null;
        Boolean prependFilenameToChunks = null;
        Integer maxItemsPerChunk = null;
        Boolean parsePdfTablesWithOcr = null;
        Boolean detectAudioLanguage = null;
        FileContentTypesNullable mediaType = null;
        UserFile response = api.upload(_file)
                .chunkSize(chunkSize)
                .chunkOverlap(chunkOverlap)
                .skipEmbeddingGeneration(skipEmbeddingGeneration)
                .setPageAsBoundary(setPageAsBoundary)
                .embeddingModel(embeddingModel)
                .useOcr(useOcr)
                .generateSparseVectors(generateSparseVectors)
                .prependFilenameToChunks(prependFilenameToChunks)
                .maxItemsPerChunk(maxItemsPerChunk)
                .parsePdfTablesWithOcr(parsePdfTablesWithOcr)
                .detectAudioLanguage(detectAudioLanguage)
                .mediaType(mediaType)
                .execute();
        // TODO: test validations
    }

    /**
     * Create Upload File From Url
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void uploadFromUrlTest() throws ApiException {
        String url = null;
        String fileName = null;
        Integer chunkSize = null;
        Integer chunkOverlap = null;
        Boolean skipEmbeddingGeneration = null;
        Boolean setPageAsBoundary = null;
        EmbeddingGenerators embeddingModel = null;
        Boolean generateSparseVectors = null;
        Boolean useTextract = null;
        Boolean prependFilenameToChunks = null;
        Integer maxItemsPerChunk = null;
        Boolean parsePdfTablesWithOcr = null;
        Boolean detectAudioLanguage = null;
        FileContentTypesNullable mediaType = null;
        UserFile response = api.uploadFromUrl(url)
                .fileName(fileName)
                .chunkSize(chunkSize)
                .chunkOverlap(chunkOverlap)
                .skipEmbeddingGeneration(skipEmbeddingGeneration)
                .setPageAsBoundary(setPageAsBoundary)
                .embeddingModel(embeddingModel)
                .generateSparseVectors(generateSparseVectors)
                .useTextract(useTextract)
                .prependFilenameToChunks(prependFilenameToChunks)
                .maxItemsPerChunk(maxItemsPerChunk)
                .parsePdfTablesWithOcr(parsePdfTablesWithOcr)
                .detectAudioLanguage(detectAudioLanguage)
                .mediaType(mediaType)
                .execute();
        // TODO: test validations
    }

    /**
     * Create Raw Text
     *
     * Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI&#39;s multimodal model; for text, we support OpenAI&#39;s &#x60;text-embedding-ada-002&#x60; and Cohere&#39;s embed-multilingual-v3.0. The model can be specified via the &#x60;embedding_model&#x60; parameter (in the POST body for &#x60;/embeddings&#x60;, and a query  parameter in &#x60;/uploadfile&#x60;). If no model is supplied, the &#x60;text-embedding-ada-002&#x60; is used by default. When performing embedding queries, embeddings from files that used the specified model will be considered in the query. For example, if files A and B have embeddings generated with &#x60;OPENAI&#x60;, and files C and D have embeddings generated with &#x60;COHERE_MULTILINGUAL_V3&#x60;, then by default, queries will only consider files A and B. If &#x60;COHERE_MULTILINGUAL_V3&#x60; is specified as the &#x60;embedding_model&#x60; in &#x60;/embeddings&#x60;, then only files C and D will be considered. Make sure that the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not** set &#x60;VERTEX_MULTIMODAL&#x60; as an &#x60;embedding_model&#x60;. This model is used automatically by Carbon when it detects an image file.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void uploadTextTest() throws ApiException {
        String contents = null;
        String name = null;
        Integer chunkSize = null;
        Integer chunkOverlap = null;
        Boolean skipEmbeddingGeneration = null;
        Integer overwriteFileId = null;
        EmbeddingGeneratorsNullable embeddingModel = null;
        Boolean generateSparseVectors = null;
        UserFile response = api.uploadText(contents)
                .name(name)
                .chunkSize(chunkSize)
                .chunkOverlap(chunkOverlap)
                .skipEmbeddingGeneration(skipEmbeddingGeneration)
                .overwriteFileId(overwriteFileId)
                .embeddingModel(embeddingModel)
                .generateSparseVectors(generateSparseVectors)
                .execute();
        // TODO: test validations
    }

}

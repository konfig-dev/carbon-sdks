/* tslint:disable */
/* eslint-disable */
/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/

import globalAxios, { AxiosPromise, AxiosInstance, AxiosRequestConfig } from 'axios';
import { Configuration } from '../configuration';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction, isBrowser } from '../common';
import { fromBuffer } from "file-type/browser"
const FormData = require("form-data")
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../base';
// @ts-ignore
import { GenericSuccessResponse } from '../models';
// @ts-ignore
import { HTTPValidationError } from '../models';
// @ts-ignore
import { OrderDir } from '../models';
// @ts-ignore
import { OrganizationUserDataSourceFilters } from '../models';
// @ts-ignore
import { OrganizationUserDataSourceOrderByColumns } from '../models';
// @ts-ignore
import { OrganizationUserDataSourceQueryInput } from '../models';
// @ts-ignore
import { OrganizationUserDataSourceResponse } from '../models';
// @ts-ignore
import { Pagination } from '../models';
// @ts-ignore
import { RevokeAccessTokenInput } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * DataSourcesApi - axios parameter creator
 * @export
 */
export const DataSourcesApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * 
         * @summary User Data Sources
         * @param {OrganizationUserDataSourceQueryInput} organizationUserDataSourceQueryInput 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        queryUserDataSources: async (organizationUserDataSourceQueryInput: OrganizationUserDataSourceQueryInput, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'organizationUserDataSourceQueryInput' is not null or undefined
            assertParamExists('queryUserDataSources', 'organizationUserDataSourceQueryInput', organizationUserDataSourceQueryInput)
            const localVarPath = `/user_data_sources`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication accessToken required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "authorization", keyParamName: "accessToken", configuration, prefix: "Token " })
            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "authorization", keyParamName: "apiKey", configuration, prefix: "Bearer " })
            // authentication customerId required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "customer-id", keyParamName: "customerId", configuration })

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: organizationUserDataSourceQueryInput,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });
            localVarRequestOptions.data = serializeDataIfNeeded(organizationUserDataSourceQueryInput, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary Revoke Access Token
         * @param {RevokeAccessTokenInput} revokeAccessTokenInput 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        revokeAccessToken: async (revokeAccessTokenInput: RevokeAccessTokenInput, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'revokeAccessTokenInput' is not null or undefined
            assertParamExists('revokeAccessToken', 'revokeAccessTokenInput', revokeAccessTokenInput)
            const localVarPath = `/revoke_access_token`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication accessToken required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "authorization", keyParamName: "accessToken", configuration, prefix: "Token " })
            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "authorization", keyParamName: "apiKey", configuration, prefix: "Bearer " })
            // authentication customerId required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "customer-id", keyParamName: "customerId", configuration })

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: revokeAccessTokenInput,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });
            localVarRequestOptions.data = serializeDataIfNeeded(revokeAccessTokenInput, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * DataSourcesApi - functional programming interface
 * @export
 */
export const DataSourcesApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = DataSourcesApiAxiosParamCreator(configuration)
    return {
        /**
         * 
         * @summary User Data Sources
         * @param {DataSourcesApiQueryUserDataSourcesRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async queryUserDataSources(requestParameters: DataSourcesApiQueryUserDataSourcesRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<OrganizationUserDataSourceResponse>> {
            const organizationUserDataSourceQueryInput: OrganizationUserDataSourceQueryInput = {
                pagination: requestParameters.pagination,
                order_by: requestParameters.order_by,
                order_dir: requestParameters.order_dir,
                filters: requestParameters.filters
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.queryUserDataSources(organizationUserDataSourceQueryInput, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * 
         * @summary Revoke Access Token
         * @param {DataSourcesApiRevokeAccessTokenRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async revokeAccessToken(requestParameters: DataSourcesApiRevokeAccessTokenRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<GenericSuccessResponse>> {
            const revokeAccessTokenInput: RevokeAccessTokenInput = {
                data_source_id: requestParameters.data_source_id
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.revokeAccessToken(revokeAccessTokenInput, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * DataSourcesApi - factory interface
 * @export
 */
export const DataSourcesApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = DataSourcesApiFp(configuration)
    return {
        /**
         * 
         * @summary User Data Sources
         * @param {DataSourcesApiQueryUserDataSourcesRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        queryUserDataSources(requestParameters: DataSourcesApiQueryUserDataSourcesRequest, options?: AxiosRequestConfig): AxiosPromise<OrganizationUserDataSourceResponse> {
            return localVarFp.queryUserDataSources(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * 
         * @summary Revoke Access Token
         * @param {DataSourcesApiRevokeAccessTokenRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        revokeAccessToken(requestParameters: DataSourcesApiRevokeAccessTokenRequest, options?: AxiosRequestConfig): AxiosPromise<GenericSuccessResponse> {
            return localVarFp.revokeAccessToken(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for queryUserDataSources operation in DataSourcesApi.
 * @export
 * @interface DataSourcesApiQueryUserDataSourcesRequest
 */
export type DataSourcesApiQueryUserDataSourcesRequest = {
    
} & OrganizationUserDataSourceQueryInput

/**
 * Request parameters for revokeAccessToken operation in DataSourcesApi.
 * @export
 * @interface DataSourcesApiRevokeAccessTokenRequest
 */
export type DataSourcesApiRevokeAccessTokenRequest = {
    
} & RevokeAccessTokenInput

/**
 * DataSourcesApiGenerated - object-oriented interface
 * @export
 * @class DataSourcesApiGenerated
 * @extends {BaseAPI}
 */
export class DataSourcesApiGenerated extends BaseAPI {
    /**
     * 
     * @summary User Data Sources
     * @param {DataSourcesApiQueryUserDataSourcesRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DataSourcesApiGenerated
     */
    public queryUserDataSources(requestParameters: DataSourcesApiQueryUserDataSourcesRequest, options?: AxiosRequestConfig) {
        return DataSourcesApiFp(this.configuration).queryUserDataSources(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * 
     * @summary Revoke Access Token
     * @param {DataSourcesApiRevokeAccessTokenRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DataSourcesApiGenerated
     */
    public revokeAccessToken(requestParameters: DataSourcesApiRevokeAccessTokenRequest, options?: AxiosRequestConfig) {
        return DataSourcesApiFp(this.configuration).revokeAccessToken(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}

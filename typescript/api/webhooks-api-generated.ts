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
import { AddWebhookProps } from '../models';
// @ts-ignore
import { EmbeddingsAndChunksQueryInputPagination } from '../models';
// @ts-ignore
import { GenericSuccessResponse } from '../models';
// @ts-ignore
import { HTTPValidationError } from '../models';
// @ts-ignore
import { OrderDir } from '../models';
// @ts-ignore
import { Webhook } from '../models';
// @ts-ignore
import { WebhookOrderByColumns } from '../models';
// @ts-ignore
import { WebhookQueryInput } from '../models';
// @ts-ignore
import { WebhookQueryInputFilters } from '../models';
// @ts-ignore
import { WebhookQueryResponse } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * WebhooksApi - axios parameter creator
 * @export
 */
export const WebhooksApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * 
         * @summary Add Webhook Url
         * @param {AddWebhookProps} addWebhookProps 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        addUrl: async (addWebhookProps: AddWebhookProps, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'addWebhookProps' is not null or undefined
            assertParamExists('addUrl', 'addWebhookProps', addWebhookProps)
            const localVarPath = `/add_webhook`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: addWebhookProps,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });
            localVarRequestOptions.data = serializeDataIfNeeded(addWebhookProps, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary Delete Webhook Url
         * @param {number} webhookId 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteUrl: async (webhookId: number, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'webhookId' is not null or undefined
            assertParamExists('deleteUrl', 'webhookId', webhookId)
            const localVarPath = `/delete_webhook/{webhook_id}`
                .replace(`{${"webhook_id"}}`, encodeURIComponent(String(webhookId !== undefined ? webhookId : `-webhook_id-`)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'DELETE', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })

    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary Webhook Urls
         * @param {WebhookQueryInput} webhookQueryInput 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        urls: async (webhookQueryInput: WebhookQueryInput, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'webhookQueryInput' is not null or undefined
            assertParamExists('urls', 'webhookQueryInput', webhookQueryInput)
            const localVarPath = `/webhooks`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: webhookQueryInput,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });
            localVarRequestOptions.data = serializeDataIfNeeded(webhookQueryInput, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * WebhooksApi - functional programming interface
 * @export
 */
export const WebhooksApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = WebhooksApiAxiosParamCreator(configuration)
    return {
        /**
         * 
         * @summary Add Webhook Url
         * @param {WebhooksApiAddUrlRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async addUrl(requestParameters: WebhooksApiAddUrlRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Webhook>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.addUrl(requestParameters, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * 
         * @summary Delete Webhook Url
         * @param {WebhooksApiDeleteUrlRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async deleteUrl(requestParameters: WebhooksApiDeleteUrlRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<GenericSuccessResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.deleteUrl(requestParameters.webhookId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * 
         * @summary Webhook Urls
         * @param {WebhooksApiUrlsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async urls(requestParameters: WebhooksApiUrlsRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<WebhookQueryResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.urls(requestParameters, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * WebhooksApi - factory interface
 * @export
 */
export const WebhooksApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = WebhooksApiFp(configuration)
    return {
        /**
         * 
         * @summary Add Webhook Url
         * @param {WebhooksApiAddUrlRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        addUrl(requestParameters: WebhooksApiAddUrlRequest, options?: AxiosRequestConfig): AxiosPromise<Webhook> {
            return localVarFp.addUrl(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * 
         * @summary Delete Webhook Url
         * @param {WebhooksApiDeleteUrlRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteUrl(requestParameters: WebhooksApiDeleteUrlRequest, options?: AxiosRequestConfig): AxiosPromise<GenericSuccessResponse> {
            return localVarFp.deleteUrl(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * 
         * @summary Webhook Urls
         * @param {WebhooksApiUrlsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        urls(requestParameters: WebhooksApiUrlsRequest, options?: AxiosRequestConfig): AxiosPromise<WebhookQueryResponse> {
            return localVarFp.urls(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for addUrl operation in WebhooksApi.
 * @export
 * @interface WebhooksApiAddUrlRequest
 */
export type WebhooksApiAddUrlRequest = {
    
} & AddWebhookProps

/**
 * Request parameters for deleteUrl operation in WebhooksApi.
 * @export
 * @interface WebhooksApiDeleteUrlRequest
 */
export type WebhooksApiDeleteUrlRequest = {
    
    /**
    * 
    * @type {number}
    * @memberof WebhooksApiDeleteUrl
    */
    readonly webhookId: number
    
}

/**
 * Request parameters for urls operation in WebhooksApi.
 * @export
 * @interface WebhooksApiUrlsRequest
 */
export type WebhooksApiUrlsRequest = {
    
} & WebhookQueryInput

/**
 * WebhooksApiGenerated - object-oriented interface
 * @export
 * @class WebhooksApiGenerated
 * @extends {BaseAPI}
 */
export class WebhooksApiGenerated extends BaseAPI {
    /**
     * 
     * @summary Add Webhook Url
     * @param {WebhooksApiAddUrlRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof WebhooksApiGenerated
     */
    public addUrl(requestParameters: WebhooksApiAddUrlRequest, options?: AxiosRequestConfig) {
        return WebhooksApiFp(this.configuration).addUrl(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * 
     * @summary Delete Webhook Url
     * @param {WebhooksApiDeleteUrlRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof WebhooksApiGenerated
     */
    public deleteUrl(requestParameters: WebhooksApiDeleteUrlRequest, options?: AxiosRequestConfig) {
        return WebhooksApiFp(this.configuration).deleteUrl(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * 
     * @summary Webhook Urls
     * @param {WebhooksApiUrlsRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof WebhooksApiGenerated
     */
    public urls(requestParameters: WebhooksApiUrlsRequest, options?: AxiosRequestConfig) {
        return WebhooksApiFp(this.configuration).urls(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}

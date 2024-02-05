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
import { FetchURLsResponse } from '../models';
// @ts-ignore
import { HTTPValidationError } from '../models';
// @ts-ignore
import { SitemapScrapeRequest } from '../models';
// @ts-ignore
import { Tags1 } from '../models';
// @ts-ignore
import { WebscrapeRequest } from '../models';
// @ts-ignore
import { YoutubeTranscriptResponse } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * UtilitiesApi - axios parameter creator
 * @export
 */
export const UtilitiesApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Extracts all URLs from a webpage.   Args:     url (str): URL of the webpage  Returns:     FetchURLsResponse: A response object with a list of URLs extracted from the webpage and the webpage content.
         * @summary Fetch Urls
         * @param {string} url 
         * @param {string} [customerId] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        fetchUrls: async (url: string, customerId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'url' is not null or undefined
            assertParamExists('fetchUrls', 'url', url)
            const localVarPath = `/fetch_urls`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })
            if (url !== undefined) {
                localVarQueryParameter['url'] = url;
            }

            if (customerId != null) {
                localVarHeaderParameter['customer-id'] = String(customerId);
            }


    
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
         * Fetches english transcripts from YouTube videos.  Args:     id (str): The ID of the YouTube video.      raw (bool): Whether to return the raw transcript or not. Defaults to False.  Returns:     dict: A dictionary with the transcript of the YouTube video.
         * @summary Fetch Youtube Transcripts
         * @param {string} id 
         * @param {boolean} [raw] 
         * @param {string} [customerId] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        fetchYoutubeTranscripts: async (id: string, raw?: boolean, customerId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('fetchYoutubeTranscripts', 'id', id)
            const localVarPath = `/fetch_youtube_transcript`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })
            if (id !== undefined) {
                localVarQueryParameter['id'] = id;
            }

            if (raw !== undefined) {
                localVarQueryParameter['raw'] = raw;
            }

            if (customerId != null) {
                localVarHeaderParameter['customer-id'] = String(customerId);
            }


    
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
         * Retrieves all URLs from a sitemap, which can subsequently be utilized with our `web_scrape` endpoint.  <!--Args:     url (str): URL of the sitemap  Returns:     dict: A dictionary with a list of URLs extracted from the sitemap.-->
         * @summary Sitemap
         * @param {string} url 
         * @param {string} [customerId] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        processSitemap: async (url: string, customerId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'url' is not null or undefined
            assertParamExists('processSitemap', 'url', url)
            const localVarPath = `/process_sitemap`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })
            if (url !== undefined) {
                localVarQueryParameter['url'] = url;
            }

            if (customerId != null) {
                localVarHeaderParameter['customer-id'] = String(customerId);
            }


    
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
         * Extracts all URLs from a sitemap and performs a web scrape on each of them.  Args:     sitemap_url (str): URL of the sitemap  Returns:     dict: A response object with the status of the scraping job message.-->
         * @summary Scrape Sitemap
         * @param {SitemapScrapeRequest} sitemapScrapeRequest 
         * @param {string} [customerId] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        scrapeSitemap: async (sitemapScrapeRequest: SitemapScrapeRequest, customerId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'sitemapScrapeRequest' is not null or undefined
            assertParamExists('scrapeSitemap', 'sitemapScrapeRequest', sitemapScrapeRequest)
            const localVarPath = `/scrape_sitemap`;
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
            if (customerId != null) {
                localVarHeaderParameter['customer-id'] = String(customerId);
            }


    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: sitemapScrapeRequest,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });
            localVarRequestOptions.data = serializeDataIfNeeded(sitemapScrapeRequest, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Conduct a web scrape on a given webpage URL. Our web scraper is fully compatible with JavaScript and supports recursion depth, enabling you to efficiently extract all content from the target website.  <!--Args:     scraping_requests (List[WebscrapeRequest]): A list of WebscrapeRequest objects.       Returns:     dict: A response object with the status of the scraping job message.-->
         * @summary Web Scrape
         * @param {Array<WebscrapeRequest>} webscrapeRequest 
         * @param {string} [customerId] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        scrapeWeb: async (webscrapeRequest: Array<WebscrapeRequest>, customerId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'webscrapeRequest' is not null or undefined
            assertParamExists('scrapeWeb', 'webscrapeRequest', webscrapeRequest)
            const localVarPath = `/web_scrape`;
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
            if (customerId != null) {
                localVarHeaderParameter['customer-id'] = String(customerId);
            }


    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: webscrapeRequest,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration
            });
            localVarRequestOptions.data = serializeDataIfNeeded(webscrapeRequest, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Perform a web search and obtain a list of relevant URLs.  As an illustration, when you perform a search for “content related to MRNA,” you will receive a list of links such as the following:      - https://tomrenz.substack.com/p/mrna-and-why-it-matters      - https://www.statnews.com/2020/11/10/the-story-of-mrna-how-a-once-dismissed-idea-became-a-leading-technology-in-the-covid-vaccine-race/      - https://www.statnews.com/2022/11/16/covid-19-vaccines-were-a-success-but-mrna-still-has-a-delivery-problem/          - https://joomi.substack.com/p/were-still-being-misled-about-how  Subsequently, you can submit these links to the web_scrape endpoint in order to retrieve the content of the respective web pages.  Args:     query (str): Query to search for  Returns:     FetchURLsResponse: A response object with a list of URLs for a given search query.
         * @summary Search Urls
         * @param {string} query 
         * @param {string} [customerId] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        searchUrls: async (query: string, customerId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'query' is not null or undefined
            assertParamExists('searchUrls', 'query', query)
            const localVarPath = `/search_urls`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication apiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, keyParamName: "authorization", configuration })
            if (query !== undefined) {
                localVarQueryParameter['query'] = query;
            }

            if (customerId != null) {
                localVarHeaderParameter['customer-id'] = String(customerId);
            }


    
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
    }
};

/**
 * UtilitiesApi - functional programming interface
 * @export
 */
export const UtilitiesApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = UtilitiesApiAxiosParamCreator(configuration)
    return {
        /**
         * Extracts all URLs from a webpage.   Args:     url (str): URL of the webpage  Returns:     FetchURLsResponse: A response object with a list of URLs extracted from the webpage and the webpage content.
         * @summary Fetch Urls
         * @param {UtilitiesApiFetchUrlsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async fetchUrls(requestParameters: UtilitiesApiFetchUrlsRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<FetchURLsResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.fetchUrls(requestParameters.url, requestParameters.customerId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Fetches english transcripts from YouTube videos.  Args:     id (str): The ID of the YouTube video.      raw (bool): Whether to return the raw transcript or not. Defaults to False.  Returns:     dict: A dictionary with the transcript of the YouTube video.
         * @summary Fetch Youtube Transcripts
         * @param {UtilitiesApiFetchYoutubeTranscriptsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async fetchYoutubeTranscripts(requestParameters: UtilitiesApiFetchYoutubeTranscriptsRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<YoutubeTranscriptResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.fetchYoutubeTranscripts(requestParameters.id, requestParameters.raw, requestParameters.customerId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Retrieves all URLs from a sitemap, which can subsequently be utilized with our `web_scrape` endpoint.  <!--Args:     url (str): URL of the sitemap  Returns:     dict: A dictionary with a list of URLs extracted from the sitemap.-->
         * @summary Sitemap
         * @param {UtilitiesApiProcessSitemapRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async processSitemap(requestParameters: UtilitiesApiProcessSitemapRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<object>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.processSitemap(requestParameters.url, requestParameters.customerId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Extracts all URLs from a sitemap and performs a web scrape on each of them.  Args:     sitemap_url (str): URL of the sitemap  Returns:     dict: A response object with the status of the scraping job message.-->
         * @summary Scrape Sitemap
         * @param {UtilitiesApiScrapeSitemapRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async scrapeSitemap(requestParameters: UtilitiesApiScrapeSitemapRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<object>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.scrapeSitemap(requestParameters, requestParameters.customerId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Conduct a web scrape on a given webpage URL. Our web scraper is fully compatible with JavaScript and supports recursion depth, enabling you to efficiently extract all content from the target website.  <!--Args:     scraping_requests (List[WebscrapeRequest]): A list of WebscrapeRequest objects.       Returns:     dict: A response object with the status of the scraping job message.-->
         * @summary Web Scrape
         * @param {UtilitiesApiScrapeWebRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async scrapeWeb(requestParameters: UtilitiesApiScrapeWebRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<object>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.scrapeWeb(requestParameters.requestBody, requestParameters.customerId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Perform a web search and obtain a list of relevant URLs.  As an illustration, when you perform a search for “content related to MRNA,” you will receive a list of links such as the following:      - https://tomrenz.substack.com/p/mrna-and-why-it-matters      - https://www.statnews.com/2020/11/10/the-story-of-mrna-how-a-once-dismissed-idea-became-a-leading-technology-in-the-covid-vaccine-race/      - https://www.statnews.com/2022/11/16/covid-19-vaccines-were-a-success-but-mrna-still-has-a-delivery-problem/          - https://joomi.substack.com/p/were-still-being-misled-about-how  Subsequently, you can submit these links to the web_scrape endpoint in order to retrieve the content of the respective web pages.  Args:     query (str): Query to search for  Returns:     FetchURLsResponse: A response object with a list of URLs for a given search query.
         * @summary Search Urls
         * @param {UtilitiesApiSearchUrlsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async searchUrls(requestParameters: UtilitiesApiSearchUrlsRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<FetchURLsResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.searchUrls(requestParameters.query, requestParameters.customerId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * UtilitiesApi - factory interface
 * @export
 */
export const UtilitiesApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = UtilitiesApiFp(configuration)
    return {
        /**
         * Extracts all URLs from a webpage.   Args:     url (str): URL of the webpage  Returns:     FetchURLsResponse: A response object with a list of URLs extracted from the webpage and the webpage content.
         * @summary Fetch Urls
         * @param {UtilitiesApiFetchUrlsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        fetchUrls(requestParameters: UtilitiesApiFetchUrlsRequest, options?: AxiosRequestConfig): AxiosPromise<FetchURLsResponse> {
            return localVarFp.fetchUrls(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Fetches english transcripts from YouTube videos.  Args:     id (str): The ID of the YouTube video.      raw (bool): Whether to return the raw transcript or not. Defaults to False.  Returns:     dict: A dictionary with the transcript of the YouTube video.
         * @summary Fetch Youtube Transcripts
         * @param {UtilitiesApiFetchYoutubeTranscriptsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        fetchYoutubeTranscripts(requestParameters: UtilitiesApiFetchYoutubeTranscriptsRequest, options?: AxiosRequestConfig): AxiosPromise<YoutubeTranscriptResponse> {
            return localVarFp.fetchYoutubeTranscripts(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieves all URLs from a sitemap, which can subsequently be utilized with our `web_scrape` endpoint.  <!--Args:     url (str): URL of the sitemap  Returns:     dict: A dictionary with a list of URLs extracted from the sitemap.-->
         * @summary Sitemap
         * @param {UtilitiesApiProcessSitemapRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        processSitemap(requestParameters: UtilitiesApiProcessSitemapRequest, options?: AxiosRequestConfig): AxiosPromise<object> {
            return localVarFp.processSitemap(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Extracts all URLs from a sitemap and performs a web scrape on each of them.  Args:     sitemap_url (str): URL of the sitemap  Returns:     dict: A response object with the status of the scraping job message.-->
         * @summary Scrape Sitemap
         * @param {UtilitiesApiScrapeSitemapRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        scrapeSitemap(requestParameters: UtilitiesApiScrapeSitemapRequest, options?: AxiosRequestConfig): AxiosPromise<object> {
            return localVarFp.scrapeSitemap(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Conduct a web scrape on a given webpage URL. Our web scraper is fully compatible with JavaScript and supports recursion depth, enabling you to efficiently extract all content from the target website.  <!--Args:     scraping_requests (List[WebscrapeRequest]): A list of WebscrapeRequest objects.       Returns:     dict: A response object with the status of the scraping job message.-->
         * @summary Web Scrape
         * @param {UtilitiesApiScrapeWebRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        scrapeWeb(requestParameters: UtilitiesApiScrapeWebRequest, options?: AxiosRequestConfig): AxiosPromise<object> {
            return localVarFp.scrapeWeb(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Perform a web search and obtain a list of relevant URLs.  As an illustration, when you perform a search for “content related to MRNA,” you will receive a list of links such as the following:      - https://tomrenz.substack.com/p/mrna-and-why-it-matters      - https://www.statnews.com/2020/11/10/the-story-of-mrna-how-a-once-dismissed-idea-became-a-leading-technology-in-the-covid-vaccine-race/      - https://www.statnews.com/2022/11/16/covid-19-vaccines-were-a-success-but-mrna-still-has-a-delivery-problem/          - https://joomi.substack.com/p/were-still-being-misled-about-how  Subsequently, you can submit these links to the web_scrape endpoint in order to retrieve the content of the respective web pages.  Args:     query (str): Query to search for  Returns:     FetchURLsResponse: A response object with a list of URLs for a given search query.
         * @summary Search Urls
         * @param {UtilitiesApiSearchUrlsRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        searchUrls(requestParameters: UtilitiesApiSearchUrlsRequest, options?: AxiosRequestConfig): AxiosPromise<FetchURLsResponse> {
            return localVarFp.searchUrls(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for fetchUrls operation in UtilitiesApi.
 * @export
 * @interface UtilitiesApiFetchUrlsRequest
 */
export type UtilitiesApiFetchUrlsRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiFetchUrls
    */
    readonly url: string
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiFetchUrls
    */
    readonly customerId?: string
    
}

/**
 * Request parameters for fetchYoutubeTranscripts operation in UtilitiesApi.
 * @export
 * @interface UtilitiesApiFetchYoutubeTranscriptsRequest
 */
export type UtilitiesApiFetchYoutubeTranscriptsRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiFetchYoutubeTranscripts
    */
    readonly id: string
    
    /**
    * 
    * @type {boolean}
    * @memberof UtilitiesApiFetchYoutubeTranscripts
    */
    readonly raw?: boolean
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiFetchYoutubeTranscripts
    */
    readonly customerId?: string
    
}

/**
 * Request parameters for processSitemap operation in UtilitiesApi.
 * @export
 * @interface UtilitiesApiProcessSitemapRequest
 */
export type UtilitiesApiProcessSitemapRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiProcessSitemap
    */
    readonly url: string
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiProcessSitemap
    */
    readonly customerId?: string
    
}

/**
 * Request parameters for scrapeSitemap operation in UtilitiesApi.
 * @export
 * @interface UtilitiesApiScrapeSitemapRequest
 */
export type UtilitiesApiScrapeSitemapRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiScrapeSitemap
    */
    readonly customerId?: string
    
} & SitemapScrapeRequest

/**
 * Request parameters for scrapeWeb operation in UtilitiesApi.
 * @export
 * @interface UtilitiesApiScrapeWebRequest
 */
export type UtilitiesApiScrapeWebRequest = {
    /**
    * 
    * @type {Array<WebscrapeRequest>}
    * @memberof UtilitiesApiScrapeWeb
    */
    readonly requestBody: Array<WebscrapeRequest>
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiScrapeWeb
    */
    readonly customerId?: string
}

/**
 * Request parameters for searchUrls operation in UtilitiesApi.
 * @export
 * @interface UtilitiesApiSearchUrlsRequest
 */
export type UtilitiesApiSearchUrlsRequest = {
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiSearchUrls
    */
    readonly query: string
    
    /**
    * 
    * @type {string}
    * @memberof UtilitiesApiSearchUrls
    */
    readonly customerId?: string
    
}

/**
 * UtilitiesApiGenerated - object-oriented interface
 * @export
 * @class UtilitiesApiGenerated
 * @extends {BaseAPI}
 */
export class UtilitiesApiGenerated extends BaseAPI {
    /**
     * Extracts all URLs from a webpage.   Args:     url (str): URL of the webpage  Returns:     FetchURLsResponse: A response object with a list of URLs extracted from the webpage and the webpage content.
     * @summary Fetch Urls
     * @param {UtilitiesApiFetchUrlsRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UtilitiesApiGenerated
     */
    public fetchUrls(requestParameters: UtilitiesApiFetchUrlsRequest, options?: AxiosRequestConfig) {
        return UtilitiesApiFp(this.configuration).fetchUrls(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Fetches english transcripts from YouTube videos.  Args:     id (str): The ID of the YouTube video.      raw (bool): Whether to return the raw transcript or not. Defaults to False.  Returns:     dict: A dictionary with the transcript of the YouTube video.
     * @summary Fetch Youtube Transcripts
     * @param {UtilitiesApiFetchYoutubeTranscriptsRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UtilitiesApiGenerated
     */
    public fetchYoutubeTranscripts(requestParameters: UtilitiesApiFetchYoutubeTranscriptsRequest, options?: AxiosRequestConfig) {
        return UtilitiesApiFp(this.configuration).fetchYoutubeTranscripts(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieves all URLs from a sitemap, which can subsequently be utilized with our `web_scrape` endpoint.  <!--Args:     url (str): URL of the sitemap  Returns:     dict: A dictionary with a list of URLs extracted from the sitemap.-->
     * @summary Sitemap
     * @param {UtilitiesApiProcessSitemapRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UtilitiesApiGenerated
     */
    public processSitemap(requestParameters: UtilitiesApiProcessSitemapRequest, options?: AxiosRequestConfig) {
        return UtilitiesApiFp(this.configuration).processSitemap(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Extracts all URLs from a sitemap and performs a web scrape on each of them.  Args:     sitemap_url (str): URL of the sitemap  Returns:     dict: A response object with the status of the scraping job message.-->
     * @summary Scrape Sitemap
     * @param {UtilitiesApiScrapeSitemapRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UtilitiesApiGenerated
     */
    public scrapeSitemap(requestParameters: UtilitiesApiScrapeSitemapRequest, options?: AxiosRequestConfig) {
        return UtilitiesApiFp(this.configuration).scrapeSitemap(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Conduct a web scrape on a given webpage URL. Our web scraper is fully compatible with JavaScript and supports recursion depth, enabling you to efficiently extract all content from the target website.  <!--Args:     scraping_requests (List[WebscrapeRequest]): A list of WebscrapeRequest objects.       Returns:     dict: A response object with the status of the scraping job message.-->
     * @summary Web Scrape
     * @param {UtilitiesApiScrapeWebRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UtilitiesApiGenerated
     */
    public scrapeWeb(requestParameters: UtilitiesApiScrapeWebRequest, options?: AxiosRequestConfig) {
        return UtilitiesApiFp(this.configuration).scrapeWeb(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Perform a web search and obtain a list of relevant URLs.  As an illustration, when you perform a search for “content related to MRNA,” you will receive a list of links such as the following:      - https://tomrenz.substack.com/p/mrna-and-why-it-matters      - https://www.statnews.com/2020/11/10/the-story-of-mrna-how-a-once-dismissed-idea-became-a-leading-technology-in-the-covid-vaccine-race/      - https://www.statnews.com/2022/11/16/covid-19-vaccines-were-a-success-but-mrna-still-has-a-delivery-problem/          - https://joomi.substack.com/p/were-still-being-misled-about-how  Subsequently, you can submit these links to the web_scrape endpoint in order to retrieve the content of the respective web pages.  Args:     query (str): Query to search for  Returns:     FetchURLsResponse: A response object with a list of URLs for a given search query.
     * @summary Search Urls
     * @param {UtilitiesApiSearchUrlsRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof UtilitiesApiGenerated
     */
    public searchUrls(requestParameters: UtilitiesApiSearchUrlsRequest, options?: AxiosRequestConfig) {
        return UtilitiesApiFp(this.configuration).searchUrls(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}

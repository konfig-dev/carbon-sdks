/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { WebhookNoKey } from './webhook-no-key';

/**
 * 
 * @export
 * @interface WebhookQueryResponse
 */
export interface WebhookQueryResponse {
    /**
     * 
     * @type {Array<WebhookNoKey>}
     * @memberof WebhookQueryResponse
     */
    'results': Array<WebhookNoKey>;
    /**
     * 
     * @type {number}
     * @memberof WebhookQueryResponse
     */
    'count': number;
}


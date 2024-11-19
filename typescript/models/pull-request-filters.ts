/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { PRStateInput } from './prstate-input';

/**
 * 
 * @export
 * @interface PullRequestFilters
 */
export interface PullRequestFilters {
    /**
     * 
     * @type {PRStateInput}
     * @memberof PullRequestFilters
     */
    'state'?: PRStateInput;
    /**
     * Filter pulls by base branch name
     * @type {string}
     * @memberof PullRequestFilters
     */
    'base'?: string | null;
    /**
     * Filter pulls by head user or head organization and branch name in the format of user:ref-name or organization:ref-name
     * @type {string}
     * @memberof PullRequestFilters
     */
    'head'?: string | null;
}

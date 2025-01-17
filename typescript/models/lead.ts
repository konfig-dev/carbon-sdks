/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Address } from './address';
import { Email } from './email';
import { Event } from './event';
import { PartialAccountNullable } from './partial-account-nullable';
import { PartialContactNullable } from './partial-contact-nullable';
import { PartialOwner } from './partial-owner';
import { PhoneNumber } from './phone-number';
import { Task } from './task';

/**
 * 
 * @export
 * @interface Lead
 */
export interface Lead {
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'title': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'description': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'id': string;
    /**
     * 
     * @type {PartialOwner}
     * @memberof Lead
     */
    'owner': PartialOwner;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'source': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'status': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'company': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'first_name': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'last_name': string | null;
    /**
     * 
     * @type {Array<Address>}
     * @memberof Lead
     */
    'addresses': Array<Address>;
    /**
     * 
     * @type {Array<PhoneNumber>}
     * @memberof Lead
     */
    'phone_numbers': Array<PhoneNumber>;
    /**
     * 
     * @type {Array<Email>}
     * @memberof Lead
     */
    'emails': Array<Email>;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'converted_at': string | null;
    /**
     * 
     * @type {PartialAccountNullable}
     * @memberof Lead
     */
    'converted_account': PartialAccountNullable | null;
    /**
     * 
     * @type {PartialContactNullable}
     * @memberof Lead
     */
    'converted_contact': PartialContactNullable | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'last_activity_at': string | null;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'created_at': string;
    /**
     * 
     * @type {string}
     * @memberof Lead
     */
    'updated_at': string;
    /**
     * 
     * @type {boolean}
     * @memberof Lead
     */
    'is_deleted': boolean;
    /**
     * 
     * @type {Array<Task>}
     * @memberof Lead
     */
    'tasks'?: Array<Task> | null;
    /**
     * 
     * @type {Array<Event>}
     * @memberof Lead
     */
    'events'?: Array<Event> | null;
    /**
     * 
     * @type {object}
     * @memberof Lead
     */
    'remote_data': object | null;
}


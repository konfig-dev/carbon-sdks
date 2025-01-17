<div align="center">

[![Visit Carbon](https://raw.githubusercontent.com/Carbon-for-Developers/carbon-sdks/HEAD/python/header.png)](https://carbon.ai)

# Carbon<a id="carbon"></a>

Connect external data to LLMs, no matter the source.


[![PyPI](https://img.shields.io/badge/PyPI-v0.2.56-blue)](https://pypi.org/project/carbon-python-sdk/0.2.56)
[![README.md](https://img.shields.io/badge/README-Click%20Here-green)](https://github.com/Carbon-for-Developers/carbon-sdks/tree/main/python#readme)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
- [Async](#async)
- [Raw HTTP Response](#raw-http-response)
- [Reference](#reference)
  * [`carbon.auth.get_access_token`](#carbonauthget_access_token)
  * [`carbon.auth.get_white_labeling`](#carbonauthget_white_labeling)
  * [`carbon.crm.get_account`](#carboncrmget_account)
  * [`carbon.crm.get_accounts`](#carboncrmget_accounts)
  * [`carbon.crm.get_contact`](#carboncrmget_contact)
  * [`carbon.crm.get_contacts`](#carboncrmget_contacts)
  * [`carbon.crm.get_lead`](#carboncrmget_lead)
  * [`carbon.crm.get_leads`](#carboncrmget_leads)
  * [`carbon.crm.get_opportunities`](#carboncrmget_opportunities)
  * [`carbon.crm.get_opportunity`](#carboncrmget_opportunity)
  * [`carbon.data_sources.add_tags`](#carbondata_sourcesadd_tags)
  * [`carbon.data_sources.query`](#carbondata_sourcesquery)
  * [`carbon.data_sources.query_user_data_sources`](#carbondata_sourcesquery_user_data_sources)
  * [`carbon.data_sources.remove_tags`](#carbondata_sourcesremove_tags)
  * [`carbon.data_sources.revoke_access_token`](#carbondata_sourcesrevoke_access_token)
  * [`carbon.embeddings.get_documents`](#carbonembeddingsget_documents)
  * [`carbon.embeddings.get_embeddings_and_chunks`](#carbonembeddingsget_embeddings_and_chunks)
  * [`carbon.embeddings.list`](#carbonembeddingslist)
  * [`carbon.embeddings.upload_chunks_and_embeddings`](#carbonembeddingsupload_chunks_and_embeddings)
  * [`carbon.files.create_user_file_tags`](#carbonfilescreate_user_file_tags)
  * [`carbon.files.delete_file_tags`](#carbonfilesdelete_file_tags)
  * [`carbon.files.delete_many`](#carbonfilesdelete_many)
  * [`carbon.files.delete_v2`](#carbonfilesdelete_v2)
  * [`carbon.files.get_parsed_file`](#carbonfilesget_parsed_file)
  * [`carbon.files.get_raw_file`](#carbonfilesget_raw_file)
  * [`carbon.files.modify_cold_storage_parameters`](#carbonfilesmodify_cold_storage_parameters)
  * [`carbon.files.move_to_hot_storage`](#carbonfilesmove_to_hot_storage)
  * [`carbon.files.query_user_files`](#carbonfilesquery_user_files)
  * [`carbon.files.query_user_files_deprecated`](#carbonfilesquery_user_files_deprecated)
  * [`carbon.files.resync`](#carbonfilesresync)
  * [`carbon.files.upload`](#carbonfilesupload)
  * [`carbon.files.upload_from_url`](#carbonfilesupload_from_url)
  * [`carbon.files.upload_text`](#carbonfilesupload_text)
  * [`carbon.github.get_issue`](#carbongithubget_issue)
  * [`carbon.github.get_issues`](#carbongithubget_issues)
  * [`carbon.github.get_pr`](#carbongithubget_pr)
  * [`carbon.github.get_pr_comments`](#carbongithubget_pr_comments)
  * [`carbon.github.get_pr_commits`](#carbongithubget_pr_commits)
  * [`carbon.github.get_pr_files`](#carbongithubget_pr_files)
  * [`carbon.github.get_pull_requests`](#carbongithubget_pull_requests)
  * [`carbon.integrations.cancel`](#carbonintegrationscancel)
  * [`carbon.integrations.connect_data_source`](#carbonintegrationsconnect_data_source)
  * [`carbon.integrations.connect_document360`](#carbonintegrationsconnect_document360)
  * [`carbon.integrations.connect_freshdesk`](#carbonintegrationsconnect_freshdesk)
  * [`carbon.integrations.connect_gitbook`](#carbonintegrationsconnect_gitbook)
  * [`carbon.integrations.connect_guru`](#carbonintegrationsconnect_guru)
  * [`carbon.integrations.create_aws_iam_user`](#carbonintegrationscreate_aws_iam_user)
  * [`carbon.integrations.get_oauth_url`](#carbonintegrationsget_oauth_url)
  * [`carbon.integrations.list_confluence_pages`](#carbonintegrationslist_confluence_pages)
  * [`carbon.integrations.list_conversations`](#carbonintegrationslist_conversations)
  * [`carbon.integrations.list_data_source_items`](#carbonintegrationslist_data_source_items)
  * [`carbon.integrations.list_folders`](#carbonintegrationslist_folders)
  * [`carbon.integrations.list_gitbook_spaces`](#carbonintegrationslist_gitbook_spaces)
  * [`carbon.integrations.list_labels`](#carbonintegrationslist_labels)
  * [`carbon.integrations.list_outlook_categories`](#carbonintegrationslist_outlook_categories)
  * [`carbon.integrations.list_repos`](#carbonintegrationslist_repos)
  * [`carbon.integrations.list_sharepoint_sites`](#carbonintegrationslist_sharepoint_sites)
  * [`carbon.integrations.sync_azure_blob_files`](#carbonintegrationssync_azure_blob_files)
  * [`carbon.integrations.sync_azure_blob_storage`](#carbonintegrationssync_azure_blob_storage)
  * [`carbon.integrations.sync_confluence`](#carbonintegrationssync_confluence)
  * [`carbon.integrations.sync_data_source_items`](#carbonintegrationssync_data_source_items)
  * [`carbon.integrations.sync_files`](#carbonintegrationssync_files)
  * [`carbon.integrations.sync_git_hub`](#carbonintegrationssync_git_hub)
  * [`carbon.integrations.sync_gitbook`](#carbonintegrationssync_gitbook)
  * [`carbon.integrations.sync_gmail`](#carbonintegrationssync_gmail)
  * [`carbon.integrations.sync_outlook`](#carbonintegrationssync_outlook)
  * [`carbon.integrations.sync_repos`](#carbonintegrationssync_repos)
  * [`carbon.integrations.sync_rss_feed`](#carbonintegrationssync_rss_feed)
  * [`carbon.integrations.sync_s3_files`](#carbonintegrationssync_s3_files)
  * [`carbon.integrations.sync_slack`](#carbonintegrationssync_slack)
  * [`carbon.organizations.get`](#carbonorganizationsget)
  * [`carbon.organizations.update`](#carbonorganizationsupdate)
  * [`carbon.organizations.update_stats`](#carbonorganizationsupdate_stats)
  * [`carbon.users.delete`](#carbonusersdelete)
  * [`carbon.users.get`](#carbonusersget)
  * [`carbon.users.list`](#carbonuserslist)
  * [`carbon.users.toggle_user_features`](#carbonuserstoggle_user_features)
  * [`carbon.users.update_users`](#carbonusersupdate_users)
  * [`carbon.users.who_am_i`](#carbonuserswho_am_i)
  * [`carbon.utilities.fetch_urls`](#carbonutilitiesfetch_urls)
  * [`carbon.utilities.fetch_webpage`](#carbonutilitiesfetch_webpage)
  * [`carbon.utilities.fetch_youtube_transcripts`](#carbonutilitiesfetch_youtube_transcripts)
  * [`carbon.utilities.process_sitemap`](#carbonutilitiesprocess_sitemap)
  * [`carbon.utilities.scrape_sitemap`](#carbonutilitiesscrape_sitemap)
  * [`carbon.utilities.scrape_web`](#carbonutilitiesscrape_web)
  * [`carbon.utilities.search_urls`](#carbonutilitiessearch_urls)
  * [`carbon.utilities.user_webpages`](#carbonutilitiesuser_webpages)
  * [`carbon.webhooks.add_url`](#carbonwebhooksadd_url)
  * [`carbon.webhooks.delete_url`](#carbonwebhooksdelete_url)
  * [`carbon.webhooks.urls`](#carbonwebhooksurls)
  * [`carbon.white_label.create`](#carbonwhite_labelcreate)
  * [`carbon.white_label.delete`](#carbonwhite_labeldelete)
  * [`carbon.white_label.list`](#carbonwhite_labellist)
  * [`carbon.white_label.update`](#carbonwhite_labelupdate)

<!-- tocstop -->

## Requirements<a id="requirements"></a>

Python >=3.7

## Installation<a id="installation"></a>

```sh
pip install carbon-python-sdk==0.2.56
```

## Getting Started<a id="getting-started"></a>

```python
from carbon import Carbon

# 1) Get an access token for a customer
carbon = Carbon(
    api_key="YOUR_API_KEY",
    customer_id="YOUR_CUSTOMER_ID",
)

token = carbon.auth.get_access_token()

# 2) Use the access token to authenticate moving forward
carbon = Carbon(access_token=token.access_token)

# use SDK as usual
white_labeling = carbon.auth.get_white_labeling()
# etc.
```

## Async<a id="async"></a>

`async` support is available by prepending `a` to any method.

```python
import asyncio
from pprint import pprint
from carbon import Carbon, ApiException

carbon = Carbon(
    access_token="YOUR_API_KEY",
    api_key="YOUR_API_KEY",
    customer_id="YOUR_API_KEY",
)


async def main():
    try:
        # Get Access Token
        get_access_token_response = await carbon.auth.aget_access_token()
        print(get_access_token_response)
    except ApiException as e:
        print("Exception when calling AuthApi.get_access_token: %s\n" % e)
        pprint(e.body)
        if e.status == 422:
            pprint(e.body["detail"])
        pprint(e.headers)
        pprint(e.status)
        pprint(e.reason)
        pprint(e.round_trip_time)


asyncio.run(main())
```

## Raw HTTP Response<a id="raw-http-response"></a>

To access raw HTTP response values, use the `.raw` namespace.

```python
from pprint import pprint
from carbon import Carbon, ApiException

carbon = Carbon(
    access_token="YOUR_API_KEY",
    api_key="YOUR_API_KEY",
    customer_id="YOUR_API_KEY",
)

try:
    # Get Access Token
    get_access_token_response = carbon.auth.raw.get_access_token()
    pprint(get_access_token_response.body)
    pprint(get_access_token_response.body["access_token"])
    pprint(get_access_token_response.body["refresh_token"])
    pprint(get_access_token_response.headers)
    pprint(get_access_token_response.status)
    pprint(get_access_token_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthApi.get_access_token: %s\n" % e)
    pprint(e.body)
    if e.status == 422:
        pprint(e.body["detail"])
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```


## Reference<a id="reference"></a>
### `carbon.auth.get_access_token`<a id="carbonauthget_access_token"></a>

Get Access Token

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_access_token_response = carbon.auth.get_access_token()
```

#### 🔄 Return<a id="🔄-return"></a>

[`TokenResponse`](./carbon/pydantic/token_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/auth/v1/access_token` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.auth.get_white_labeling`<a id="carbonauthget_white_labeling"></a>

Returns whether or not the organization is white labeled and which integrations are white labeled

:param current_user: the current user
:param db: the database session
:return: a WhiteLabelingResponse

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_white_labeling_response = carbon.auth.get_white_labeling()
```

#### 🔄 Return<a id="🔄-return"></a>

[`WhiteLabelingResponse`](./carbon/pydantic/white_labeling_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/auth/v1/white_labeling` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_account`<a id="carboncrmget_account"></a>

Get Account

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_account_response = carbon.crm.get_account(
    id="id_example",
    data_source_id=1,
    include_remote_data=False,
    includes=["string_example"],
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Account`](./carbon/pydantic/account.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/accounts/{id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_accounts`<a id="carboncrmget_accounts"></a>

Get Accounts

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_accounts_response = carbon.crm.get_accounts(
    data_source_id=1,
    include_remote_data=False,
    next_cursor="string_example",
    page_size=1,
    order_dir="asc",
    includes=[],
    filters={},
    order_by="created_at",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### page_size: `Optional[int]`<a id="page_size-optionalint"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

##### filters: [`AccountFilters`](./carbon/type/account_filters.py)<a id="filters-accountfilterscarbontypeaccount_filterspy"></a>


##### order_by: [`AccountsOrderByNullable`](./carbon/type/accounts_order_by_nullable.py)<a id="order_by-accountsorderbynullablecarbontypeaccounts_order_by_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`AccountsRequest`](./carbon/type/accounts_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`AccountResponse`](./carbon/pydantic/account_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/accounts` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_contact`<a id="carboncrmget_contact"></a>

Get Contact

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_contact_response = carbon.crm.get_contact(
    id="id_example",
    data_source_id=1,
    include_remote_data=False,
    includes=["string_example"],
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Contact`](./carbon/pydantic/contact.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/contacts/{id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_contacts`<a id="carboncrmget_contacts"></a>

Get Contacts

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_contacts_response = carbon.crm.get_contacts(
    data_source_id=1,
    include_remote_data=False,
    next_cursor="string_example",
    page_size=1,
    order_dir="asc",
    includes=[],
    filters={},
    order_by="created_at",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### page_size: `Optional[int]`<a id="page_size-optionalint"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

##### filters: [`ContactFilters`](./carbon/type/contact_filters.py)<a id="filters-contactfilterscarbontypecontact_filterspy"></a>


##### order_by: [`ContactsOrderByNullable`](./carbon/type/contacts_order_by_nullable.py)<a id="order_by-contactsorderbynullablecarbontypecontacts_order_by_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ContactsRequest`](./carbon/type/contacts_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`ContactsResponse`](./carbon/pydantic/contacts_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/contacts` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_lead`<a id="carboncrmget_lead"></a>

Get Lead

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_lead_response = carbon.crm.get_lead(
    id="id_example",
    data_source_id=1,
    include_remote_data=False,
    includes=["string_example"],
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Lead`](./carbon/pydantic/lead.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/leads/{id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_leads`<a id="carboncrmget_leads"></a>

Get Leads

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_leads_response = carbon.crm.get_leads(
    data_source_id=1,
    include_remote_data=False,
    next_cursor="string_example",
    page_size=1,
    order_dir="asc",
    includes=[],
    filters={},
    order_by="created_at",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### page_size: `Optional[int]`<a id="page_size-optionalint"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

##### filters: [`LeadFilters`](./carbon/type/lead_filters.py)<a id="filters-leadfilterscarbontypelead_filterspy"></a>


##### order_by: [`LeadsOrderByNullable`](./carbon/type/leads_order_by_nullable.py)<a id="order_by-leadsorderbynullablecarbontypeleads_order_by_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`LeadsRequest`](./carbon/type/leads_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`LeadsResponse`](./carbon/pydantic/leads_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/leads` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_opportunities`<a id="carboncrmget_opportunities"></a>

Get Opportunities

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_opportunities_response = carbon.crm.get_opportunities(
    data_source_id=1,
    include_remote_data=False,
    next_cursor="string_example",
    page_size=1,
    order_dir="asc",
    includes=[],
    filters={
        "status": "WON",
    },
    order_by="created_at",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### page_size: `Optional[int]`<a id="page_size-optionalint"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

##### filters: [`OpportunityFilters`](./carbon/type/opportunity_filters.py)<a id="filters-opportunityfilterscarbontypeopportunity_filterspy"></a>


##### order_by: [`OpportunitiesOrderByNullable`](./carbon/type/opportunities_order_by_nullable.py)<a id="order_by-opportunitiesorderbynullablecarbontypeopportunities_order_by_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OpportunitiesRequest`](./carbon/type/opportunities_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OpportunitiesResponse`](./carbon/pydantic/opportunities_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/opportunities` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.crm.get_opportunity`<a id="carboncrmget_opportunity"></a>

Get Opportunity

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_opportunity_response = carbon.crm.get_opportunity(
    id="id_example",
    data_source_id=1,
    include_remote_data=False,
    includes=["string_example"],
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### includes: List[[`BaseIncludes`](./carbon/type/base_includes.py)]<a id="includes-listbaseincludescarbontypebase_includespy"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Opportunity`](./carbon/pydantic/opportunity.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/crm/opportunities/{id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.data_sources.add_tags`<a id="carbondata_sourcesadd_tags"></a>

Add Data Source Tags

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
add_tags_response = carbon.data_sources.add_tags(
    tags={},
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`AddDataSourceTagsInput`](./carbon/type/add_data_source_tags_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceAPI`](./carbon/pydantic/organization_user_data_source_api.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/data_sources/tags/add` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.data_sources.query`<a id="carbondata_sourcesquery"></a>

Data Sources

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
query_response = carbon.data_sources.query(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    filters={
        "source": "GOOGLE_CLOUD_STORAGE",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`OrganizationUserDataSourceOrderByColumns`](./carbon/type/organization_user_data_source_order_by_columns.py)<a id="order_by-organizationuserdatasourceorderbycolumnscarbontypeorganization_user_data_source_order_by_columnspy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### filters: [`OrganizationUserDataSourceFilters`](./carbon/type/organization_user_data_source_filters.py)<a id="filters-organizationuserdatasourcefilterscarbontypeorganization_user_data_source_filterspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OrganizationUserDataSourceQueryInput`](./carbon/type/organization_user_data_source_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceResponse`](./carbon/pydantic/organization_user_data_source_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/data_sources` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.data_sources.query_user_data_sources`<a id="carbondata_sourcesquery_user_data_sources"></a>

User Data Sources

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
query_user_data_sources_response = carbon.data_sources.query_user_data_sources(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    filters={
        "source": "GOOGLE_CLOUD_STORAGE",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`OrganizationUserDataSourceOrderByColumns`](./carbon/type/organization_user_data_source_order_by_columns.py)<a id="order_by-organizationuserdatasourceorderbycolumnscarbontypeorganization_user_data_source_order_by_columnspy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### filters: [`OrganizationUserDataSourceFilters`](./carbon/type/organization_user_data_source_filters.py)<a id="filters-organizationuserdatasourcefilterscarbontypeorganization_user_data_source_filterspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OrganizationUserDataSourceQueryInput`](./carbon/type/organization_user_data_source_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceResponse`](./carbon/pydantic/organization_user_data_source_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_data_sources` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.data_sources.remove_tags`<a id="carbondata_sourcesremove_tags"></a>

Remove Data Source Tags

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
remove_tags_response = carbon.data_sources.remove_tags(
    data_source_id=1,
    tags_to_remove=[],
    remove_all_tags=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### tags_to_remove: [`RemoveDataSourceTagsInputTagsToRemove`](./carbon/type/remove_data_source_tags_input_tags_to_remove.py)<a id="tags_to_remove-removedatasourcetagsinputtagstoremovecarbontyperemove_data_source_tags_input_tags_to_removepy"></a>

##### remove_all_tags: `bool`<a id="remove_all_tags-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`RemoveDataSourceTagsInput`](./carbon/type/remove_data_source_tags_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceAPI`](./carbon/pydantic/organization_user_data_source_api.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/data_sources/tags/remove` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.data_sources.revoke_access_token`<a id="carbondata_sourcesrevoke_access_token"></a>

Revoke Access Token

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
revoke_access_token_response = carbon.data_sources.revoke_access_token(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`RevokeAccessTokenInput`](./carbon/type/revoke_access_token_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/revoke_access_token` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.embeddings.get_documents`<a id="carbonembeddingsget_documents"></a>

For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2`
and `tags` are specified, `tags` is ignored. `tags_v2` enables
building complex filters through the use of "AND", "OR", and negation logic. Take the below input as an example:
```json
{
    "OR": [
        {
            "key": "subject",
            "value": "holy-bible",
            "negate": false
        },
        {
            "key": "person-of-interest",
            "value": "jesus christ",
            "negate": false
        },
        {
            "key": "genre",
            "value": "religion",
            "negate": true
        }
        {
            "AND": [
                {
                    "key": "subject",
                    "value": "tao-te-ching",
                    "negate": false
                },
                {
                    "key": "author",
                    "value": "lao-tzu",
                    "negate": false
                }
            ]
        }
    ]
}
```
In this case, files will be filtered such that:
1. "subject" = "holy-bible" OR
2. "person-of-interest" = "jesus christ" OR
3. "genre" != "religion" OR
4. "subject" = "tao-te-ching" AND "author" = "lao-tzu"

Note that the top level of the query must be either an "OR" or "AND" array. Currently, nesting is limited to 3.
For tag blocks (those with "key", "value", and "negate" keys), the following typing rules apply:
1. "key" isn't optional and must be a `string`
2. "value" isn't optional and can be `any` or list[`any`]
3. "negate" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in
the resulting query. It is `false` by default.


When querying embeddings, you can optionally specify the `media_type` parameter in your request. By default (if
not set), it is equal to "TEXT". This means that the query will be performed over files that have
been parsed as text (for now, this covers all files except image files). If it is equal to "IMAGE",
the query will be performed over image files (for now, `.jpg` and `.png` files). You can think of this
field as an additional filter on top of any filters set in `file_ids` and


When `hybrid_search` is set to true, a combination of keyword search and semantic search are used to rank
and select candidate embeddings during information retrieval. By default, these search methods are weighted
equally during the ranking process. To adjust the weight (or "importance") of each search method, you can use
the `hybrid_search_tuning_parameters` property. The description for the different tuning parameters are:
- `weight_a`: weight to assign to semantic search
- `weight_b`: weight to assign to keyword search

You must ensure that `sum(weight_a, weight_b,..., weight_n)` for all *n* weights is equal to 1. The equality
has an error tolerance of 0.001 to account for possible floating point issues.

In order to use hybrid search for a customer across a set of documents, two flags need to be enabled:
1. Use the `/modify_user_configuration` endpoint to to enable `sparse_vectors` for the customer. The payload
body for this request is below:
```
{
  "configuration_key_name": "sparse_vectors",
  "value": {
    "enabled": true
  }
}
```
2. Make sure hybrid search is enabled for the documents across which you want to perform the search. For the
`/uploadfile` endpoint, this can be done by setting the following query parameter: `generate_sparse_vectors=true`


Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
embedding queries, embeddings from files that used the specified model will be considered in the query.
For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
`COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_documents_response = carbon.embeddings.get_documents(
    query="a",
    k=1,
    tags={
        "key": "string_example",
    },
    query_vector=[3.14],
    file_ids=[1],
    parent_file_ids=[1],
    include_all_children=False,
    tags_v2={},
    include_tags=True,
    include_vectors=True,
    include_raw_file=True,
    hybrid_search=True,
    hybrid_search_tuning_parameters={
        "weight_a": 0.5,
        "weight_b": 0.5,
    },
    media_type="TEXT",
    embedding_model="OPENAI",
    include_file_level_metadata=False,
    high_accuracy=False,
    rerank={
        "model": "model_example",
    },
    file_types_at_source=["string_example"],
    exclude_cold_storage_files=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `str`<a id="query-str"></a>

Query for which to get related chunks and embeddings.

##### k: `int`<a id="k-int"></a>

Number of related chunks to return.

##### tags: [`GetEmbeddingDocumentsBodyTags`](./carbon/type/get_embedding_documents_body_tags.py)<a id="tags-getembeddingdocumentsbodytagscarbontypeget_embedding_documents_body_tagspy"></a>

##### query_vector: [`GetEmbeddingDocumentsBodyQueryVector`](./carbon/type/get_embedding_documents_body_query_vector.py)<a id="query_vector-getembeddingdocumentsbodyqueryvectorcarbontypeget_embedding_documents_body_query_vectorpy"></a>

##### file_ids: [`GetEmbeddingDocumentsBodyFileIds`](./carbon/type/get_embedding_documents_body_file_ids.py)<a id="file_ids-getembeddingdocumentsbodyfileidscarbontypeget_embedding_documents_body_file_idspy"></a>

##### parent_file_ids: [`GetEmbeddingDocumentsBodyParentFileIds`](./carbon/type/get_embedding_documents_body_parent_file_ids.py)<a id="parent_file_ids-getembeddingdocumentsbodyparentfileidscarbontypeget_embedding_documents_body_parent_file_idspy"></a>

##### include_all_children: `bool`<a id="include_all_children-bool"></a>

Flag to control whether or not to include all children of filtered files in the embedding search.

##### tags_v2: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags_v2-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

A set of tags to limit the search to. Use this instead of `tags`, which is deprecated.

##### include_tags: `Optional[bool]`<a id="include_tags-optionalbool"></a>

Flag to control whether or not to include tags for each chunk in the response.

##### include_vectors: `Optional[bool]`<a id="include_vectors-optionalbool"></a>

Flag to control whether or not to include embedding vectors in the response.

##### include_raw_file: `Optional[bool]`<a id="include_raw_file-optionalbool"></a>

Flag to control whether or not to include a signed URL to the raw file containing each chunk         in the response.

##### hybrid_search: `Optional[bool]`<a id="hybrid_search-optionalbool"></a>

Flag to control whether or not to perform hybrid search.

##### hybrid_search_tuning_parameters: [`HybridSearchTuningParamsNullable`](./carbon/type/hybrid_search_tuning_params_nullable.py)<a id="hybrid_search_tuning_parameters-hybridsearchtuningparamsnullablecarbontypehybrid_search_tuning_params_nullablepy"></a>


##### media_type: [`FileContentTypesNullable`](./carbon/type/file_content_types_nullable.py)<a id="media_type-filecontenttypesnullablecarbontypefile_content_types_nullablepy"></a>

##### embedding_model: [`EmbeddingGeneratorsNullable`](./carbon/type/embedding_generators_nullable.py)<a id="embedding_model-embeddinggeneratorsnullablecarbontypeembedding_generators_nullablepy"></a>

##### include_file_level_metadata: `Optional[bool]`<a id="include_file_level_metadata-optionalbool"></a>

Flag to control whether or not to include file-level metadata in the response. This metadata         will be included in the `content_metadata` field of each document along with chunk/embedding level metadata.

##### high_accuracy: `Optional[bool]`<a id="high_accuracy-optionalbool"></a>

Flag to control whether or not to perform a high accuracy embedding search. By default, this is set to false.         If true, the search may return more accurate results, but may take longer to complete.

##### rerank: [`RerankParamsNullable`](./carbon/type/rerank_params_nullable.py)<a id="rerank-rerankparamsnullablecarbontypererank_params_nullablepy"></a>


##### file_types_at_source: [`GetEmbeddingDocumentsBodyFileTypesAtSource`](./carbon/type/get_embedding_documents_body_file_types_at_source.py)<a id="file_types_at_source-getembeddingdocumentsbodyfiletypesatsourcecarbontypeget_embedding_documents_body_file_types_at_sourcepy"></a>

##### exclude_cold_storage_files: `bool`<a id="exclude_cold_storage_files-bool"></a>

Flag to control whether or not to exclude files that are not in hot storage. If set to False, then an error will be returned if any filtered         files are in cold storage.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GetEmbeddingDocumentsBody`](./carbon/type/get_embedding_documents_body.py)
#### 🔄 Return<a id="🔄-return"></a>

[`DocumentResponseList`](./carbon/pydantic/document_response_list.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/embeddings` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.embeddings.get_embeddings_and_chunks`<a id="carbonembeddingsget_embeddings_and_chunks"></a>

Retrieve Embeddings And Content

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_embeddings_and_chunks_response = carbon.embeddings.get_embeddings_and_chunks(
    filters={
        "user_file_id": 1,
        "embedding_model": "OPENAI",
    },
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    include_vectors=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`EmbeddingsAndChunksFilters`](./carbon/type/embeddings_and_chunks_filters.py)<a id="filters-embeddingsandchunksfilterscarbontypeembeddings_and_chunks_filterspy"></a>


##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`EmbeddingsAndChunksOrderByColumns`](./carbon/type/embeddings_and_chunks_order_by_columns.py)<a id="order_by-embeddingsandchunksorderbycolumnscarbontypeembeddings_and_chunks_order_by_columnspy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### include_vectors: `bool`<a id="include_vectors-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`EmbeddingsAndChunksQueryInput`](./carbon/type/embeddings_and_chunks_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`EmbeddingsAndChunksResponse`](./carbon/pydantic/embeddings_and_chunks_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/text_chunks` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.embeddings.list`<a id="carbonembeddingslist"></a>

Retrieve Embeddings And Content V2

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_response = carbon.embeddings.list(
    filters={
        "include_all_children": False,
        "non_synced_only": False,
    },
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    include_vectors=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./carbon/type/organization_user_files_to_sync_filters.py)<a id="filters-organizationuserfilestosyncfilterscarbontypeorganization_user_files_to_sync_filterspy"></a>


##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`OrganizationUserFilesToSyncOrderByTypes`](./carbon/type/organization_user_files_to_sync_order_by_types.py)<a id="order_by-organizationuserfilestosyncorderbytypescarbontypeorganization_user_files_to_sync_order_by_typespy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### include_vectors: `bool`<a id="include_vectors-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`EmbeddingsAndChunksQueryInputV2`](./carbon/type/embeddings_and_chunks_query_input_v2.py)
#### 🔄 Return<a id="🔄-return"></a>

[`EmbeddingsAndChunksResponse`](./carbon/pydantic/embeddings_and_chunks_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/list_chunks_and_embeddings` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.embeddings.upload_chunks_and_embeddings`<a id="carbonembeddingsupload_chunks_and_embeddings"></a>

Upload Chunks And Embeddings

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
upload_chunks_and_embeddings_response = carbon.embeddings.upload_chunks_and_embeddings(
    embedding_model="OPENAI",
    chunks_and_embeddings=[
        {
            "file_id": 1,
            "chunks_and_embeddings": [
                {
                    "chunk_number": 1,
                    "chunk": "chunk_example",
                }
            ],
        }
    ],
    overwrite_existing=False,
    chunks_only=False,
    custom_credentials={
        "key": {},
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### chunks_and_embeddings: List[`SingleChunksAndEmbeddingsUploadInput`]<a id="chunks_and_embeddings-listsinglechunksandembeddingsuploadinput"></a>

##### overwrite_existing: `bool`<a id="overwrite_existing-bool"></a>

##### chunks_only: `bool`<a id="chunks_only-bool"></a>

##### custom_credentials: [`ChunksAndEmbeddingsUploadInputCustomCredentials`](./carbon/type/chunks_and_embeddings_upload_input_custom_credentials.py)<a id="custom_credentials-chunksandembeddingsuploadinputcustomcredentialscarbontypechunks_and_embeddings_upload_input_custom_credentialspy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ChunksAndEmbeddingsUploadInput`](./carbon/type/chunks_and_embeddings_upload_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/upload_chunks_and_embeddings` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.create_user_file_tags`<a id="carbonfilescreate_user_file_tags"></a>

A tag is a key-value pair that can be added to a file. This pair can then be used
for searches (e.g. embedding searches) in order to narrow down the scope of the search.
A file can have any number of tags. The following are reserved keys that cannot be used:
- db_embedding_id
- organization_id
- user_id
- organization_user_file_id

Carbon currently supports two data types for tag values - `string` and `list<string>`.
Keys can only be `string`. If values other than `string` and `list<string>` are used,
they're automatically converted to strings (e.g. 4 will become "4").

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
create_user_file_tags_response = carbon.files.create_user_file_tags(
    tags={
        "key": "string_example",
    },
    organization_user_file_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tags: [`OrganizationUserFileTagCreateTags`](./carbon/type/organization_user_file_tag_create_tags.py)<a id="tags-organizationuserfiletagcreatetagscarbontypeorganization_user_file_tag_create_tagspy"></a>

##### organization_user_file_id: `int`<a id="organization_user_file_id-int"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OrganizationUserFileTagCreate`](./carbon/type/organization_user_file_tag_create.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFile`](./carbon/pydantic/user_file.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/create_user_file_tags` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.delete_file_tags`<a id="carbonfilesdelete_file_tags"></a>

Delete File Tags

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_file_tags_response = carbon.files.delete_file_tags(
    tags=["string_example"],
    organization_user_file_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tags: [`OrganizationUserFileTagsRemoveTags`](./carbon/type/organization_user_file_tags_remove_tags.py)<a id="tags-organizationuserfiletagsremovetagscarbontypeorganization_user_file_tags_remove_tagspy"></a>

##### organization_user_file_id: `int`<a id="organization_user_file_id-int"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OrganizationUserFileTagsRemove`](./carbon/type/organization_user_file_tags_remove.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFile`](./carbon/pydantic/user_file.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_user_file_tags` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.delete_many`<a id="carbonfilesdelete_many"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Delete Files Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_many_response = carbon.files.delete_many(
    file_ids=[1],
    sync_statuses=["string_example"],
    delete_non_synced_only=False,
    send_webhook=False,
    delete_child_files=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file_ids: [`DeleteFilesQueryInputFileIds`](./carbon/type/delete_files_query_input_file_ids.py)<a id="file_ids-deletefilesqueryinputfileidscarbontypedelete_files_query_input_file_idspy"></a>

##### sync_statuses: List[[`ExternalFileSyncStatuses`](./carbon/type/external_file_sync_statuses.py)]<a id="sync_statuses-listexternalfilesyncstatusescarbontypeexternal_file_sync_statusespy"></a>

##### delete_non_synced_only: `bool`<a id="delete_non_synced_only-bool"></a>

##### send_webhook: `bool`<a id="send_webhook-bool"></a>

##### delete_child_files: `bool`<a id="delete_child_files-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`DeleteFilesQueryInput`](./carbon/type/delete_files_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_files` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.delete_v2`<a id="carbonfilesdelete_v2"></a>

Delete Files V2 Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_v2_response = carbon.files.delete_v2(
    filters={
        "include_all_children": False,
        "non_synced_only": False,
    },
    send_webhook=False,
    preserve_file_record=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./carbon/type/organization_user_files_to_sync_filters.py)<a id="filters-organizationuserfilestosyncfilterscarbontypeorganization_user_files_to_sync_filterspy"></a>


##### send_webhook: `bool`<a id="send_webhook-bool"></a>

##### preserve_file_record: `bool`<a id="preserve_file_record-bool"></a>

Whether or not to delete all data related to the file from the database, BUT to preserve the file metadata, allowing for         resyncs. By default `preserve_file_record` is false, which means that all data related to the file *as well as* its metadata will be deleted. Note that         even if `preserve_file_record` is true, raw files uploaded via the `uploadfile` endpoint still cannot be resynced.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`DeleteFilesV2QueryInput`](./carbon/type/delete_files_v2_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_files_v2` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.get_parsed_file`<a id="carbonfilesget_parsed_file"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This route is deprecated. Use `/user_files_v2` instead.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_parsed_file_response = carbon.files.get_parsed_file(
    file_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file_id: `int`<a id="file_id-int"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`PresignedURLResponse`](./carbon/pydantic/presigned_url_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/parsed_file/{file_id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.get_raw_file`<a id="carbonfilesget_raw_file"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This route is deprecated. Use `/user_files_v2` instead.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_raw_file_response = carbon.files.get_raw_file(
    file_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file_id: `int`<a id="file_id-int"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`PresignedURLResponse`](./carbon/pydantic/presigned_url_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/raw_file/{file_id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.modify_cold_storage_parameters`<a id="carbonfilesmodify_cold_storage_parameters"></a>

Modify Cold Storage Parameters

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
modify_cold_storage_parameters_response = carbon.files.modify_cold_storage_parameters(
    filters={
        "include_all_children": False,
        "non_synced_only": False,
    },
    enable_cold_storage=True,
    hot_storage_time_to_live=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./carbon/type/organization_user_files_to_sync_filters.py)<a id="filters-organizationuserfilestosyncfilterscarbontypeorganization_user_files_to_sync_filterspy"></a>


##### enable_cold_storage: `Optional[bool]`<a id="enable_cold_storage-optionalbool"></a>

##### hot_storage_time_to_live: `Optional[int]`<a id="hot_storage_time_to_live-optionalint"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ModifyColdStorageParametersQueryInput`](./carbon/type/modify_cold_storage_parameters_query_input.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/modify_cold_storage_parameters` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.move_to_hot_storage`<a id="carbonfilesmove_to_hot_storage"></a>

Move To Hot Storage

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
move_to_hot_storage_response = carbon.files.move_to_hot_storage(
    filters={
        "include_all_children": False,
        "non_synced_only": False,
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./carbon/type/organization_user_files_to_sync_filters.py)<a id="filters-organizationuserfilestosyncfilterscarbontypeorganization_user_files_to_sync_filterspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`MoveToHotStorageQueryInput`](./carbon/type/move_to_hot_storage_query_input.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/move_to_hot_storage` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.query_user_files`<a id="carbonfilesquery_user_files"></a>

For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2`
and `tags` are specified, `tags` is ignored. `tags_v2` enables
building complex filters through the use of "AND", "OR", and negation logic. Take the below input as an example:
```json
{
    "OR": [
        {
            "key": "subject",
            "value": "holy-bible",
            "negate": false
        },
        {
            "key": "person-of-interest",
            "value": "jesus christ",
            "negate": false
        },
        {
            "key": "genre",
            "value": "religion",
            "negate": true
        }
        {
            "AND": [
                {
                    "key": "subject",
                    "value": "tao-te-ching",
                    "negate": false
                },
                {
                    "key": "author",
                    "value": "lao-tzu",
                    "negate": false
                }
            ]
        }
    ]
}
```
In this case, files will be filtered such that:
1. "subject" = "holy-bible" OR
2. "person-of-interest" = "jesus christ" OR
3. "genre" != "religion" OR
4. "subject" = "tao-te-ching" AND "author" = "lao-tzu"

Note that the top level of the query must be either an "OR" or "AND" array. Currently, nesting is limited to 3.
For tag blocks (those with "key", "value", and "negate" keys), the following typing rules apply:
1. "key" isn't optional and must be a `string`
2. "value" isn't optional and can be `any` or list[`any`]
3. "negate" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in
the resulting query. It is `false` by default.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
query_user_files_response = carbon.files.query_user_files(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    filters={
        "include_all_children": False,
        "non_synced_only": False,
    },
    include_raw_file=True,
    include_parsed_text_file=True,
    include_additional_files=True,
    presigned_url_expiry_time_seconds=3600,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`OrganizationUserFilesToSyncOrderByTypes`](./carbon/type/organization_user_files_to_sync_order_by_types.py)<a id="order_by-organizationuserfilestosyncorderbytypescarbontypeorganization_user_files_to_sync_order_by_typespy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./carbon/type/organization_user_files_to_sync_filters.py)<a id="filters-organizationuserfilestosyncfilterscarbontypeorganization_user_files_to_sync_filterspy"></a>


##### include_raw_file: `Optional[bool]`<a id="include_raw_file-optionalbool"></a>

If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.

##### include_parsed_text_file: `Optional[bool]`<a id="include_parsed_text_file-optionalbool"></a>

If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.

##### include_additional_files: `Optional[bool]`<a id="include_additional_files-optionalbool"></a>

If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.

##### presigned_url_expiry_time_seconds: `int`<a id="presigned_url_expiry_time_seconds-int"></a>

The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OrganizationUserFilesToSyncQueryInput`](./carbon/type/organization_user_files_to_sync_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFilesV2`](./carbon/pydantic/user_files_v2.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_files_v2` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.query_user_files_deprecated`<a id="carbonfilesquery_user_files_deprecated"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This route is deprecated. Use `/user_files_v2` instead.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
query_user_files_deprecated_response = carbon.files.query_user_files_deprecated(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    filters={
        "include_all_children": False,
        "non_synced_only": False,
    },
    include_raw_file=True,
    include_parsed_text_file=True,
    include_additional_files=True,
    presigned_url_expiry_time_seconds=3600,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`OrganizationUserFilesToSyncOrderByTypes`](./carbon/type/organization_user_files_to_sync_order_by_types.py)<a id="order_by-organizationuserfilestosyncorderbytypescarbontypeorganization_user_files_to_sync_order_by_typespy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./carbon/type/organization_user_files_to_sync_filters.py)<a id="filters-organizationuserfilestosyncfilterscarbontypeorganization_user_files_to_sync_filterspy"></a>


##### include_raw_file: `Optional[bool]`<a id="include_raw_file-optionalbool"></a>

If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.

##### include_parsed_text_file: `Optional[bool]`<a id="include_parsed_text_file-optionalbool"></a>

If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.

##### include_additional_files: `Optional[bool]`<a id="include_additional_files-optionalbool"></a>

If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.

##### presigned_url_expiry_time_seconds: `int`<a id="presigned_url_expiry_time_seconds-int"></a>

The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OrganizationUserFilesToSyncQueryInput`](./carbon/type/organization_user_files_to_sync_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`FilesQueryUserFilesDeprecatedResponse`](./carbon/pydantic/files_query_user_files_deprecated_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_files` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.resync`<a id="carbonfilesresync"></a>

Resync File

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
resync_response = carbon.files.resync(
    file_id=1,
    chunk_size=1,
    chunk_overlap=1,
    force_embedding_generation=False,
    skip_file_processing=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file_id: `int`<a id="file_id-int"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### force_embedding_generation: `bool`<a id="force_embedding_generation-bool"></a>

##### skip_file_processing: `Optional[bool]`<a id="skip_file_processing-optionalbool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ResyncFileQueryInput`](./carbon/type/resync_file_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFile`](./carbon/pydantic/user_file.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/resync_file` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.upload`<a id="carbonfilesupload"></a>

This endpoint is used to directly upload local files to Carbon. The `POST` request should be a multipart form request.
Note that the `set_page_as_boundary` query parameter is applicable only to PDFs for now. When this value is set,
PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates
of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description
of all possible query parameters:
- `chunk_size`: the chunk size (in tokens) applied when splitting the document
- `chunk_overlap`: the chunk overlap (in tokens) applied when splitting the document
- `skip_embedding_generation`: whether or not to skip the generation of chunks and embeddings
- `set_page_as_boundary`: described above
- `embedding_model`: the model used to generate embeddings for the document chunks
- `use_ocr`: whether or not to use OCR as a preprocessing step prior to generating chunks. Valid for PDFs, JPEGs, and PNGs
- `generate_sparse_vectors`: whether or not to generate sparse vectors for the file. Required for hybrid search.
- `prepend_filename_to_chunks`: whether or not to prepend the filename to the chunk text


Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
embedding queries, embeddings from files that used the specified model will be considered in the query.
For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
`COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
upload_response = carbon.files.upload(
    file=open("/path/to/file", "rb"),
    chunk_size=1,
    chunk_overlap=1,
    skip_embedding_generation=False,
    set_page_as_boundary=False,
    embedding_model="string_example",
    use_ocr=False,
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    parse_pdf_tables_with_ocr=False,
    detect_audio_language=False,
    transcription_service="assemblyai",
    include_speaker_labels=False,
    media_type="TEXT",
    split_rows=False,
    enable_cold_storage=False,
    hot_storage_time_to_live=1,
    generate_chunks_only=False,
    store_file_only=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file: `IO`<a id="file-io"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

Chunk size in tiktoken tokens to be used when processing file.

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

Chunk overlap in tiktoken tokens to be used when processing file.

##### skip_embedding_generation: `bool`<a id="skip_embedding_generation-bool"></a>

Flag to control whether or not embeddings should be generated and stored             when processing file.

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

Flag to control whether or not to set the a page's worth of content as the maximum             amount of content that can appear in a chunk. Only valid for PDFs. See description route description for             more information.

##### embedding_model: Union[[`TextEmbeddingGenerators`](./carbon/type/text_embedding_generators.py), [`MultiModalEmbeddingGenerators`](./carbon/type/multi_modal_embedding_generators.py)]<a id="embedding_model-uniontextembeddinggeneratorscarbontypetext_embedding_generatorspy-multimodalembeddinggeneratorscarbontypemulti_modal_embedding_generatorspy"></a>


Embedding model that will be used to embed file chunks.

##### use_ocr: `bool`<a id="use_ocr-bool"></a>

Whether or not to use OCR when processing files. Valid for PDFs, JPEGs, and PNGs. Useful for documents with             tables, images, and/or scanned text.

##### generate_sparse_vectors: `bool`<a id="generate_sparse_vectors-bool"></a>

Whether or not to generate sparse vectors for the file. This is *required* for the file to be a             candidate for hybrid search.

##### prepend_filename_to_chunks: `bool`<a id="prepend_filename_to_chunks-bool"></a>

Whether or not to prepend the file's name to chunks.

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### parse_pdf_tables_with_ocr: `bool`<a id="parse_pdf_tables_with_ocr-bool"></a>

Whether to use rich table parsing when `use_ocr` is enabled.

##### detect_audio_language: `bool`<a id="detect_audio_language-bool"></a>

Whether to automatically detect the language of the uploaded audio file.

##### transcription_service: [`TranscriptionServiceNullable`](./carbon/type/.py)<a id="transcription_service-transcriptionservicenullablecarbontypepy"></a>

The transcription service to use for audio files. If no service is specified, 'deepgram' will be used.

##### include_speaker_labels: `bool`<a id="include_speaker_labels-bool"></a>

Detect multiple speakers and label segments of speech by speaker for audio files.

##### media_type: [`FileContentTypesNullable`](./carbon/type/.py)<a id="media_type-filecontenttypesnullablecarbontypepy"></a>

The media type of the file. If not provided, it will be inferred from the file extension.

##### split_rows: `bool`<a id="split_rows-bool"></a>

Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files.

##### enable_cold_storage: `bool`<a id="enable_cold_storage-bool"></a>

Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false.

##### hot_storage_time_to_live: `Optional[int]`<a id="hot_storage_time_to_live-optionalint"></a>

Time in days after which the file will be moved to cold storage. Must be one of [1, 3, 7, 14, 30].

##### generate_chunks_only: `bool`<a id="generate_chunks_only-bool"></a>

If this flag is enabled, the file will be chunked and stored with Carbon,             but no embeddings will be generated. This overrides the skip_embedding_generation flag.

##### store_file_only: `bool`<a id="store_file_only-bool"></a>

If this flag is enabled, the file will be stored with Carbon, but no processing will be done.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`BodyCreateUploadFileUploadfilePost`](./carbon/type/body_create_upload_file_uploadfile_post.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFile`](./carbon/pydantic/user_file.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/uploadfile` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.upload_from_url`<a id="carbonfilesupload_from_url"></a>

Create Upload File From Url

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
upload_from_url_response = carbon.files.upload_from_url(
    url="string_example",
    file_name="string_example",
    chunk_size=1,
    chunk_overlap=1,
    skip_embedding_generation=False,
    set_page_as_boundary=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    use_textract=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    parse_pdf_tables_with_ocr=False,
    detect_audio_language=False,
    transcription_service="assemblyai",
    include_speaker_labels=False,
    media_type="TEXT",
    split_rows=False,
    cold_storage_params={
        "enable_cold_storage": False,
    },
    generate_chunks_only=False,
    store_file_only=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

##### file_name: `Optional[str]`<a id="file_name-optionalstr"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `bool`<a id="skip_embedding_generation-bool"></a>

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `bool`<a id="generate_sparse_vectors-bool"></a>

##### use_textract: `bool`<a id="use_textract-bool"></a>

##### prepend_filename_to_chunks: `bool`<a id="prepend_filename_to_chunks-bool"></a>

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### parse_pdf_tables_with_ocr: `bool`<a id="parse_pdf_tables_with_ocr-bool"></a>

##### detect_audio_language: `bool`<a id="detect_audio_language-bool"></a>

##### transcription_service: [`TranscriptionServiceNullable`](./carbon/type/transcription_service_nullable.py)<a id="transcription_service-transcriptionservicenullablecarbontypetranscription_service_nullablepy"></a>

##### include_speaker_labels: `bool`<a id="include_speaker_labels-bool"></a>

##### media_type: [`FileContentTypesNullable`](./carbon/type/file_content_types_nullable.py)<a id="media_type-filecontenttypesnullablecarbontypefile_content_types_nullablepy"></a>

##### split_rows: `bool`<a id="split_rows-bool"></a>

##### cold_storage_params: [`ColdStorageProps`](./carbon/type/cold_storage_props.py)<a id="cold_storage_params-coldstoragepropscarbontypecold_storage_propspy"></a>


##### generate_chunks_only: `bool`<a id="generate_chunks_only-bool"></a>

If this flag is enabled, the file will be chunked and stored with Carbon,         but no embeddings will be generated. This overrides the skip_embedding_generation flag.

##### store_file_only: `bool`<a id="store_file_only-bool"></a>

If this flag is enabled, the file will be stored with Carbon, but no processing will be done.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UploadFileFromUrlInput`](./carbon/type/upload_file_from_url_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFile`](./carbon/pydantic/user_file.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/upload_file_from_url` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.files.upload_text`<a id="carbonfilesupload_text"></a>

Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
embedding queries, embeddings from files that used the specified model will be considered in the query.
For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
`COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
upload_text_response = carbon.files.upload_text(
    contents="aaaaa",
    name="string_example",
    chunk_size=1,
    chunk_overlap=1,
    skip_embedding_generation=False,
    overwrite_file_id=1,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    cold_storage_params={
        "enable_cold_storage": False,
    },
    generate_chunks_only=False,
    store_file_only=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### contents: `str`<a id="contents-str"></a>

##### name: `Optional[str]`<a id="name-optionalstr"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `bool`<a id="skip_embedding_generation-bool"></a>

##### overwrite_file_id: `Optional[int]`<a id="overwrite_file_id-optionalint"></a>

##### embedding_model: [`EmbeddingGeneratorsNullable`](./carbon/type/embedding_generators_nullable.py)<a id="embedding_model-embeddinggeneratorsnullablecarbontypeembedding_generators_nullablepy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### cold_storage_params: [`ColdStorageProps`](./carbon/type/cold_storage_props.py)<a id="cold_storage_params-coldstoragepropscarbontypecold_storage_propspy"></a>


##### generate_chunks_only: `bool`<a id="generate_chunks_only-bool"></a>

If this flag is enabled, the file will be chunked and stored with Carbon,         but no embeddings will be generated. This overrides the skip_embedding_generation flag.

##### store_file_only: `bool`<a id="store_file_only-bool"></a>

If this flag is enabled, the file will be stored with Carbon, but no processing will be done.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`RawTextInput`](./carbon/type/raw_text_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserFile`](./carbon/pydantic/user_file.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/upload_text` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_issue`<a id="carbongithubget_issue"></a>

Issue

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_issue_response = carbon.github.get_issue(
    issue_number=1,
    include_remote_data=False,
    data_source_id=1,
    repository="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### issue_number: `int`<a id="issue_number-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Issue`](./carbon/pydantic/issue.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/issues/{issue_number}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_issues`<a id="carbongithubget_issues"></a>

Issues

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_issues_response = carbon.github.get_issues(
    data_source_id=1,
    repository="string_example",
    include_remote_data=False,
    page=1,
    page_size=30,
    next_cursor="string_example",
    filters={
        "state": "closed",
    },
    order_by="created",
    order_dir="asc",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

Full name of the repository, denoted as {owner}/{repo}

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### page: `int`<a id="page-int"></a>

##### page_size: `int`<a id="page_size-int"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### filters: [`IssuesFilter`](./carbon/type/issues_filter.py)<a id="filters-issuesfiltercarbontypeissues_filterpy"></a>


##### order_by: [`IssuesOrderBy`](./carbon/type/issues_order_by.py)<a id="order_by-issuesorderbycarbontypeissues_order_bypy"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`IssuesInput`](./carbon/type/issues_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`IssuesResponse`](./carbon/pydantic/issues_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/issues` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_pr`<a id="carbongithubget_pr"></a>

Get Pr

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_pr_response = carbon.github.get_pr(
    pull_number=1,
    include_remote_data=False,
    data_source_id=1,
    repository="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pull_number: `int`<a id="pull_number-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`PullRequestExtended`](./carbon/pydantic/pull_request_extended.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/pull_requests/{pull_number}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_pr_comments`<a id="carbongithubget_pr_comments"></a>

Pr Comments

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_pr_comments_response = carbon.github.get_pr_comments(
    data_source_id=1,
    repository="string_example",
    pull_number=1,
    include_remote_data=False,
    page=1,
    page_size=30,
    next_cursor="string_example",
    order_by="created",
    order_dir="asc",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

Full name of the repository, denoted as {owner}/{repo}

##### pull_number: `int`<a id="pull_number-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### page: `int`<a id="page-int"></a>

##### page_size: `int`<a id="page_size-int"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### order_by: [`CommentsOrderBy`](./carbon/type/comments_order_by.py)<a id="order_by-commentsorderbycarbontypecomments_order_bypy"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`CommentsInput`](./carbon/type/comments_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`CommentsResponse`](./carbon/pydantic/comments_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/pull_requests/comments` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_pr_commits`<a id="carbongithubget_pr_commits"></a>

Pr Commits

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_pr_commits_response = carbon.github.get_pr_commits(
    data_source_id=1,
    repository="string_example",
    pull_number=1,
    include_remote_data=False,
    page=1,
    page_size=30,
    next_cursor="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

Full name of the repository, denoted as {owner}/{repo}

##### pull_number: `int`<a id="pull_number-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### page: `int`<a id="page-int"></a>

##### page_size: `int`<a id="page_size-int"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`CommitsInput`](./carbon/type/commits_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`CommitsResponse`](./carbon/pydantic/commits_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/pull_requests/commits` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_pr_files`<a id="carbongithubget_pr_files"></a>

Pr Files

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_pr_files_response = carbon.github.get_pr_files(
    data_source_id=1,
    repository="string_example",
    pull_number=1,
    include_remote_data=False,
    page=1,
    page_size=30,
    next_cursor="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

Full name of the repository, denoted as {owner}/{repo}

##### pull_number: `int`<a id="pull_number-int"></a>

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### page: `int`<a id="page-int"></a>

##### page_size: `int`<a id="page_size-int"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`FilesInput`](./carbon/type/files_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`FilesResponse`](./carbon/pydantic/files_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/pull_requests/files` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.github.get_pull_requests`<a id="carbongithubget_pull_requests"></a>

Get Prs

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_pull_requests_response = carbon.github.get_pull_requests(
    data_source_id=1,
    repository="string_example",
    include_remote_data=False,
    page=1,
    page_size=30,
    next_cursor="string_example",
    filters={
        "state": "closed",
    },
    order_by="created",
    order_dir="asc",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### repository: `str`<a id="repository-str"></a>

Full name of the repository, denoted as {owner}/{repo}

##### include_remote_data: `bool`<a id="include_remote_data-bool"></a>

##### page: `int`<a id="page-int"></a>

##### page_size: `int`<a id="page_size-int"></a>

##### next_cursor: `Optional[str]`<a id="next_cursor-optionalstr"></a>

##### filters: [`PullRequestFilters`](./carbon/type/pull_request_filters.py)<a id="filters-pullrequestfilterscarbontypepull_request_filterspy"></a>


##### order_by: [`PROrderBy`](./carbon/type/pr_order_by.py)<a id="order_by-prorderbycarbontypepr_order_bypy"></a>

##### order_dir: [`OrderDirV2Nullable`](./carbon/type/order_dir_v2_nullable.py)<a id="order_dir-orderdirv2nullablecarbontypeorder_dir_v2_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`PullRequestsInput`](./carbon/type/pull_requests_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`PullRequestResponse`](./carbon/pydantic/pull_request_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/data/github/pull_requests` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.cancel`<a id="carbonintegrationscancel"></a>

Cancel Data Source Items Sync

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
cancel_response = carbon.integrations.cancel(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SyncDirectoryRequest`](./carbon/type/sync_directory_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceAPI`](./carbon/pydantic/organization_user_data_source_api.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/items/sync/cancel` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.connect_data_source`<a id="carbonintegrationsconnect_data_source"></a>

Connect Data Source

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
connect_data_source_response = carbon.integrations.connect_data_source(
    authentication={
        "source": "GOOGLE_DRIVE",
        "access_token": "access_token_example",
    },
    sync_options={
        "chunk_size": 1500,
        "chunk_overlap": 20,
        "skip_embedding_generation": False,
        "embedding_model": "OPENAI",
        "generate_sparse_vectors": False,
        "prepend_filename_to_chunks": False,
        "sync_files_on_connection": True,
        "set_page_as_boundary": False,
        "enable_file_picker": True,
        "sync_source_items": True,
        "incremental_sync": False,
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authentication: Union[`OAuthAuthentication`, `NotionAuthentication`, `OneDriveAuthentication`, `SharepointAuthentication`, `ConfluenceAuthentication`, `ZendeskAuthentication`, `ZoteroAuthentication`, `GitbookAuthetication`, `SalesforceAuthentication`, `FreskdeskAuthentication`, `S3Authentication`, `AzureBlobStorageAuthentication`, `GithubAuthentication`, `ServiceNowAuthentication`, `GuruAuthentication`, `GongAuthentication`]<a id="authentication-unionoauthauthentication-notionauthentication-onedriveauthentication-sharepointauthentication-confluenceauthentication-zendeskauthentication-zoteroauthentication-gitbookauthetication-salesforceauthentication-freskdeskauthentication-s3authentication-azureblobstorageauthentication-githubauthentication-servicenowauthentication-guruauthentication-gongauthentication"></a>


##### sync_options: [`SyncOptions`](./carbon/type/sync_options.py)<a id="sync_options-syncoptionscarbontypesync_optionspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ConnectDataSourceInput`](./carbon/type/connect_data_source_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`ConnectDataSourceResponse`](./carbon/pydantic/connect_data_source_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/connect` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.connect_document360`<a id="carbonintegrationsconnect_document360"></a>

You will need an access token to connect your Document360 account. To obtain an access token, follow the steps highlighted 
here https://apidocs.document360.com/apidocs/api-token.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
connect_document360_response = carbon.integrations.connect_document360(
    account_email="string_example",
    access_token="string_example",
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    sync_files_on_connection=True,
    request_id="string_example",
    sync_source_items=True,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_email: `str`<a id="account_email-str"></a>

This email will be used to identify your carbon data source. It should have access to the          Document360 account you wish to connect.

##### access_token: `str`<a id="access_token-str"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### sync_files_on_connection: `Optional[bool]`<a id="sync_files_on_connection-optionalbool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`Document360ConnectRequest`](./carbon/type/document360_connect_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/document360` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.connect_freshdesk`<a id="carbonintegrationsconnect_freshdesk"></a>

Refer this article to obtain an API key https://support.freshdesk.com/en/support/solutions/articles/215517.
Make sure that your API key has the permission to read solutions from your account and you are on a <b>paid</b> plan.
Once you have an API key, you can make a request to this endpoint along with your freshdesk domain. This will 
trigger an automatic sync of the articles in your "solutions" tab. Additional parameters below can be used to associate 
data with the synced articles or modify the sync behavior.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
connect_freshdesk_response = carbon.integrations.connect_freshdesk(
    domain="string_example",
    api_key="string_example",
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    sync_files_on_connection=True,
    request_id="string_example",
    sync_source_items=True,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### domain: `str`<a id="domain-str"></a>

##### api_key: `str`<a id="api_key-str"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGeneratorsNullable`](./carbon/type/embedding_generators_nullable.py)<a id="embedding_model-embeddinggeneratorsnullablecarbontypeembedding_generators_nullablepy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### sync_files_on_connection: `Optional[bool]`<a id="sync_files_on_connection-optionalbool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`FreshDeskConnectRequest`](./carbon/type/fresh_desk_connect_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/freshdesk` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.connect_gitbook`<a id="carbonintegrationsconnect_gitbook"></a>

You will need an access token to connect your Gitbook account. Note that the permissions will be defined by the user 
generating access token so make sure you have the permission to access spaces you will be syncing. 
Refer this article for more details https://developer.gitbook.com/gitbook-api/authentication. Additionally, you
need to specify the name of organization you will be syncing data from.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
connect_gitbook_response = carbon.integrations.connect_gitbook(
    organization="string_example",
    access_token="string_example",
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    sync_files_on_connection=True,
    request_id="string_example",
    sync_source_items=True,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### organization: `str`<a id="organization-str"></a>

##### access_token: `str`<a id="access_token-str"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### sync_files_on_connection: `Optional[bool]`<a id="sync_files_on_connection-optionalbool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GitbookConnectRequest`](./carbon/type/gitbook_connect_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gitbook` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.connect_guru`<a id="carbonintegrationsconnect_guru"></a>

You will need an access token to connect your Guru account. To obtain an access token, follow the steps highlighted here
https://help.getguru.com/docs/gurus-api#obtaining-a-user-token. The username should be your Guru username.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
connect_guru_response = carbon.integrations.connect_guru(
    username="string_example",
    access_token="string_example",
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    sync_files_on_connection=True,
    request_id="string_example",
    sync_source_items=True,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### username: `str`<a id="username-str"></a>

##### access_token: `str`<a id="access_token-str"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### sync_files_on_connection: `Optional[bool]`<a id="sync_files_on_connection-optionalbool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GuruConnectRequest`](./carbon/type/guru_connect_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/guru` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.create_aws_iam_user`<a id="carbonintegrationscreate_aws_iam_user"></a>

This endpoint can be used to connect S3 as well as Digital Ocean Spaces (S3 compatible)  
For S3, create a new IAM user with permissions to:
<ol>
<li>List all buckets.</li>
<li>Read from the specific buckets and objects to sync with Carbon. Ensure any future buckets or objects carry 
the same permissions.</li>
</ol>
Once created, generate an access key for this user and share the credentials with us. We recommend testing this key beforehand.  
For Digital Ocean Spaces, generate the above credentials in your Applications and API page here https://cloud.digitalocean.com/account/api/spaces.
Endpoint URL is required to connect Digital Ocean Spaces. It should look like <<region>>.digitaloceanspaces.com

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
create_aws_iam_user_response = carbon.integrations.create_aws_iam_user(
    access_key="string_example",
    access_key_secret="string_example",
    sync_source_items=True,
    endpoint_url="string_example",
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### access_key: `str`<a id="access_key-str"></a>

##### access_key_secret: `str`<a id="access_key_secret-str"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### endpoint_url: `Optional[str]`<a id="endpoint_url-optionalstr"></a>

You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint.         The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets.

##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`S3AuthRequest`](./carbon/type/s3_auth_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceAPI`](./carbon/pydantic/organization_user_data_source_api.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/s3` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.get_oauth_url`<a id="carbonintegrationsget_oauth_url"></a>

This endpoint can be used to generate the following URLs
- An OAuth URL for OAuth based connectors
- A file syncing URL which skips the OAuth flow if the user already has a valid access token and takes them to the
success state.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_oauth_url_response = carbon.integrations.get_oauth_url(
    service="BOX",
    tags=None,
    scope="string_example",
    scopes=[],
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    zendesk_subdomain="string_example",
    microsoft_tenant="string_example",
    sharepoint_site_name="string_example",
    confluence_subdomain="string_example",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    salesforce_domain="string_example",
    sync_files_on_connection=True,
    set_page_as_boundary=False,
    data_source_id=1,
    connecting_new_account=False,
    request_id="string_example",
    use_ocr=False,
    parse_pdf_tables_with_ocr=False,
    enable_file_picker=True,
    sync_source_items=True,
    incremental_sync=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    automatically_open_file_picker=True,
    gong_account_email="string_example",
    servicenow_credentials={
        "instance_subdomain": "instance_subdomain_example",
        "client_id": "client_id_example",
        "client_secret": "client_secret_example",
        "redirect_uri": "redirect_uri_example",
    },
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### service: [`OauthBasedConnectors`](./carbon/type/oauth_based_connectors.py)<a id="service-oauthbasedconnectorscarbontypeoauth_based_connectorspy"></a>

##### tags: [`Union[bool, date, datetime, dict, float, int, list, str, None]`](./carbon/type/typing_union_bool_date_datetime_dict_float_int_list_str_none.py)<a id="tags-unionbool-date-datetime-dict-float-int-list-str-nonecarbontypetyping_union_bool_date_datetime_dict_float_int_list_str_nonepy"></a>

##### scope: `Optional[str]`<a id="scope-optionalstr"></a>

##### scopes: [`OAuthURLRequestScopes`](./carbon/type/o_auth_url_request_scopes.py)<a id="scopes-oauthurlrequestscopescarbontypeo_auth_url_request_scopespy"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGeneratorsNullable`](./carbon/type/embedding_generators_nullable.py)<a id="embedding_model-embeddinggeneratorsnullablecarbontypeembedding_generators_nullablepy"></a>

##### zendesk_subdomain: `Optional[str]`<a id="zendesk_subdomain-optionalstr"></a>

##### microsoft_tenant: `Optional[str]`<a id="microsoft_tenant-optionalstr"></a>

##### sharepoint_site_name: `Optional[str]`<a id="sharepoint_site_name-optionalstr"></a>

##### confluence_subdomain: `Optional[str]`<a id="confluence_subdomain-optionalstr"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### salesforce_domain: `Optional[str]`<a id="salesforce_domain-optionalstr"></a>

##### sync_files_on_connection: `Optional[bool]`<a id="sync_files_on_connection-optionalbool"></a>

Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

Used to specify a data source to sync from if you have multiple connected. It can be skipped if          you only have one data source of that type connected or are connecting a new account.

##### connecting_new_account: `Optional[bool]`<a id="connecting_new_account-optionalbool"></a>

Used to connect a new data source. If not specified, we will attempt to create a sync URL         for an existing data source based on type and ID.

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

This request id will be added to all files that get synced using the generated OAuth URL

##### use_ocr: `Optional[bool]`<a id="use_ocr-optionalbool"></a>

Enable OCR for files that support it. Supported formats: pdf, png, jpg

##### parse_pdf_tables_with_ocr: `Optional[bool]`<a id="parse_pdf_tables_with_ocr-optionalbool"></a>

##### enable_file_picker: `bool`<a id="enable_file_picker-bool"></a>

Enable integration's file picker for sources that support it. Supported sources: BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### incremental_sync: `bool`<a id="incremental_sync-bool"></a>

Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### automatically_open_file_picker: `Optional[bool]`<a id="automatically_open_file_picker-optionalbool"></a>

Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources.

##### gong_account_email: `Optional[str]`<a id="gong_account_email-optionalstr"></a>

If you are connecting a Gong account, you need to input the email of the account you         wish to connect. This email will be used to identify your carbon data source.

##### servicenow_credentials: [`ServiceNowCredentialsNullable`](./carbon/type/service_now_credentials_nullable.py)<a id="servicenow_credentials-servicenowcredentialsnullablecarbontypeservice_now_credentials_nullablepy"></a>


##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OAuthURLRequest`](./carbon/type/o_auth_url_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OuthURLResponse`](./carbon/pydantic/outh_url_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/oauth_url` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_confluence_pages`<a id="carbonintegrationslist_confluence_pages"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint has been deprecated. Use /integrations/items/list instead.

To begin listing a user's Confluence pages, at least a `data_source_id` of a connected
Confluence account must be specified. This base request returns a list of root pages for
every space the user has access to in a Confluence instance. To traverse further down
the user's page directory, additional requests to this endpoint can be made with the same
`data_source_id` and with `parent_id` set to the id of page from a previous request. For
convenience, the `has_children` property in each directory item in the response list will
flag which pages will return non-empty lists of pages when set as the `parent_id`.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_confluence_pages_response = carbon.integrations.list_confluence_pages(
    data_source_id=1,
    parent_id="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### parent_id: `Optional[str]`<a id="parent_id-optionalstr"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ListRequest`](./carbon/type/list_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`ListResponse`](./carbon/pydantic/list_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/confluence/list` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_conversations`<a id="carbonintegrationslist_conversations"></a>

List all of your public and private channels, DMs, and Group DMs. The ID from response 
can be used as a filter to sync messages to Carbon   
types: Comma separated list of types. Available types are im (DMs), mpim (group DMs), public_channel, and private_channel.
Defaults to public_channel.    
cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request    
data_source_id: Data source needs to be specified if you have linked multiple slack accounts  
exclude_archived: Should archived conversations be excluded, defaults to true

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_conversations_response = carbon.integrations.list_conversations(
    types="public_channel",
    cursor="string_example",
    data_source_id=1,
    exclude_archived=True,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### types: `str`<a id="types-str"></a>

##### cursor: `Optional[str]`<a id="cursor-optionalstr"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### exclude_archived: `bool`<a id="exclude_archived-bool"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/slack/conversations` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_data_source_items`<a id="carbonintegrationslist_data_source_items"></a>

List Data Source Items

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_data_source_items_response = carbon.integrations.list_data_source_items(
    data_source_id=1,
    parent_id="string_example",
    filters={},
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="name",
    order_dir="asc",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### parent_id: `Optional[str]`<a id="parent_id-optionalstr"></a>

##### filters: [`ListItemsFiltersNullable`](./carbon/type/list_items_filters_nullable.py)<a id="filters-listitemsfiltersnullablecarbontypelist_items_filters_nullablepy"></a>


##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`ExternalSourceItemsOrderBy`](./carbon/type/external_source_items_order_by.py)<a id="order_by-externalsourceitemsorderbycarbontypeexternal_source_items_order_bypy"></a>

##### order_dir: [`OrderDirV2`](./carbon/type/order_dir_v2.py)<a id="order_dir-orderdirv2carbontypeorder_dir_v2py"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ListDataSourceItemsRequest`](./carbon/type/list_data_source_items_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`ListDataSourceItemsResponse`](./carbon/pydantic/list_data_source_items_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/items/list` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_folders`<a id="carbonintegrationslist_folders"></a>

After connecting your Outlook account, you can use this endpoint to list all of your folders on outlook. This includes 
both system folders like "inbox" and user created folders.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_folders_response = carbon.integrations.list_folders(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/outlook/user_folders` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_gitbook_spaces`<a id="carbonintegrationslist_gitbook_spaces"></a>

After connecting your Gitbook account, you can use this endpoint to list all of your spaces under current organization.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_gitbook_spaces_response = carbon.integrations.list_gitbook_spaces(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gitbook/spaces` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_labels`<a id="carbonintegrationslist_labels"></a>

After connecting your Gmail account, you can use this endpoint to list all of your labels. User created labels
will have the type "user" and Gmail's default labels will have the type "system"

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_labels_response = carbon.integrations.list_labels(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gmail/user_labels` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_outlook_categories`<a id="carbonintegrationslist_outlook_categories"></a>

After connecting your Outlook account, you can use this endpoint to list all of your categories on outlook. We currently
support listing up to 250 categories.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_outlook_categories_response = carbon.integrations.list_outlook_categories(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/outlook/user_categories` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_repos`<a id="carbonintegrationslist_repos"></a>

Once you have connected your GitHub account, you can use this endpoint to list the 
    repositories your account has access to. You can use a data source ID or username to fetch from a specific account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_repos_response = carbon.integrations.list_repos(
    per_page=30,
    page=1,
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### per_page: `int`<a id="per_page-int"></a>

##### page: `int`<a id="page-int"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/github/repos` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.list_sharepoint_sites`<a id="carbonintegrationslist_sharepoint_sites"></a>

List all Sharepoint sites in the connected tenant. The site names from the response can be
used as the site name when connecting a Sharepoint site. If site name is null in the response, then site name should
be left null when connecting to the site.

This endpoint requires an additional Sharepoint scope: "Sites.Read.All". Include this scope along with the default
Sharepoint scopes to list Sharepoint sites, connect to a site, and finally sync files from the site. The default
Sharepoint scopes are: [o, p, e, n, i, d,  , o, f, f, l, i, n, e, _, a, c, c, e, s, s,  , U, s, e, r, ., R, e, a, d,  , F, i, l, e, s, ., R, e, a, d, ., A, l, l].
 
data_soure_id: Data source needs to be specified if you have linked multiple Sharepoint accounts
cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_sharepoint_sites_response = carbon.integrations.list_sharepoint_sites(
    data_source_id=1,
    cursor="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### cursor: `Optional[str]`<a id="cursor-optionalstr"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/sharepoint/sites/list` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_azure_blob_files`<a id="carbonintegrationssync_azure_blob_files"></a>

After optionally loading the items via /integrations/items/sync and integrations/items/list, use the container name 
and file name as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
data with the selected items or modify the sync behavior

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_azure_blob_files_response = carbon.integrations.sync_azure_blob_files(
    ids=[{}],
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    set_page_as_boundary=False,
    data_source_id=1,
    request_id="string_example",
    use_ocr=False,
    parse_pdf_tables_with_ocr=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### ids: List[`AzureBlobGetFileInput`]<a id="ids-listazureblobgetfileinput"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### use_ocr: `Optional[bool]`<a id="use_ocr-optionalbool"></a>

##### parse_pdf_tables_with_ocr: `Optional[bool]`<a id="parse_pdf_tables_with_ocr-optionalbool"></a>

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`AzureBlobFileSyncInput`](./carbon/type/azure_blob_file_sync_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/azure_blob_storage/files` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_azure_blob_storage`<a id="carbonintegrationssync_azure_blob_storage"></a>

This endpoint can be used to connect Azure Blob Storage.

For Azure Blob Storage, follow these steps:
<ol>
  <li>Create a new Azure Storage account and grant the following permissions:
    <ul>
      <li>List containers.</li>
      <li>Read from specific containers and blobs to sync with Carbon. Ensure any future containers or blobs carry the same permissions.</li>
    </ul>
  </li>
  <li>Generate a shared access signature (SAS) token or an access key for the storage account.</li>
</ol>

Once created, provide us with the following details to generate the connection URL:
<ol>
  <li>Storage Account KeyName.</li>
  <li>Storage Account Name.</li>
</ol>

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_azure_blob_storage_response = carbon.integrations.sync_azure_blob_storage(
    account_name="string_example",
    account_key="string_example",
    sync_source_items=True,
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_name: `str`<a id="account_name-str"></a>

##### account_key: `str`<a id="account_key-str"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`AzureBlobAuthRequest`](./carbon/type/azure_blob_auth_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceAPI`](./carbon/pydantic/organization_user_data_source_api.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/azure_blob_storage` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_confluence`<a id="carbonintegrationssync_confluence"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint has been deprecated. Use /integrations/files/sync instead.

After listing pages in a user's Confluence account, the set of selected page `ids` and the
connected account's `data_source_id` can be passed into this endpoint to sync them into
Carbon. Additional parameters listed below can be used to associate data to the selected
pages or alter the behavior of the sync.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_confluence_response = carbon.integrations.sync_confluence(
    data_source_id=1,
    ids=["string_example"],
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    set_page_as_boundary=False,
    request_id="string_example",
    use_ocr=False,
    parse_pdf_tables_with_ocr=False,
    incremental_sync=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### ids: Union[`List[str]`, List[`SyncFilesIds`]]<a id="ids-unionliststr-listsyncfilesids"></a>


##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGeneratorsNullable`](./carbon/type/embedding_generators_nullable.py)<a id="embedding_model-embeddinggeneratorsnullablecarbontypeembedding_generators_nullablepy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### use_ocr: `Optional[bool]`<a id="use_ocr-optionalbool"></a>

##### parse_pdf_tables_with_ocr: `Optional[bool]`<a id="parse_pdf_tables_with_ocr-optionalbool"></a>

##### incremental_sync: `bool`<a id="incremental_sync-bool"></a>

Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SyncFilesRequest`](./carbon/type/sync_files_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/confluence/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_data_source_items`<a id="carbonintegrationssync_data_source_items"></a>

Sync Data Source Items

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_data_source_items_response = carbon.integrations.sync_data_source_items(
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SyncDirectoryRequest`](./carbon/type/sync_directory_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationUserDataSourceAPI`](./carbon/pydantic/organization_user_data_source_api.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/items/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_files`<a id="carbonintegrationssync_files"></a>

After listing files and folders via /integrations/items/sync and integrations/items/list, use the selected items' external ids 
as the ids in this endpoint to sync them into Carbon. Sharepoint items take an additional parameter root_id, which identifies
the drive the file or folder is in and is stored in root_external_id. That additional paramter is optional and excluding it will
tell the sync to assume the item is stored in the default Documents drive.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_files_response = carbon.integrations.sync_files(
    data_source_id=1,
    ids=["string_example"],
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    set_page_as_boundary=False,
    request_id="string_example",
    use_ocr=False,
    parse_pdf_tables_with_ocr=False,
    incremental_sync=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### ids: Union[`List[str]`, List[`SyncFilesIds`]]<a id="ids-unionliststr-listsyncfilesids"></a>


##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGeneratorsNullable`](./carbon/type/embedding_generators_nullable.py)<a id="embedding_model-embeddinggeneratorsnullablecarbontypeembedding_generators_nullablepy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### use_ocr: `Optional[bool]`<a id="use_ocr-optionalbool"></a>

##### parse_pdf_tables_with_ocr: `Optional[bool]`<a id="parse_pdf_tables_with_ocr-optionalbool"></a>

##### incremental_sync: `bool`<a id="incremental_sync-bool"></a>

Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SyncFilesRequest`](./carbon/type/sync_files_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/files/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_git_hub`<a id="carbonintegrationssync_git_hub"></a>

Refer this article to obtain an access token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens.
Make sure that your access token has the permission to read content from your desired repos. Note that if your access token
expires you will need to manually update it through this endpoint.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_git_hub_response = carbon.integrations.sync_git_hub(
    username="string_example",
    access_token="string_example",
    sync_source_items=False,
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### username: `str`<a id="username-str"></a>

##### access_token: `str`<a id="access_token-str"></a>

##### sync_source_items: `bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint

##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GithubConnectRequest`](./carbon/type/github_connect_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/github` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_gitbook`<a id="carbonintegrationssync_gitbook"></a>

You can sync upto 20 Gitbook spaces at a time using this endpoint. Additional parameters below can be used to associate 
data with the synced pages or modify the sync behavior.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_gitbook_response = carbon.integrations.sync_gitbook(
    space_ids=["string_example"],
    data_source_id=1,
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    request_id="string_example",
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### space_ids: [`GitbookSyncRequestSpaceIds`](./carbon/type/gitbook_sync_request_space_ids.py)<a id="space_ids-gitbooksyncrequestspaceidscarbontypegitbook_sync_request_space_idspy"></a>

##### data_source_id: `int`<a id="data_source_id-int"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GitbookSyncRequest`](./carbon/type/gitbook_sync_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gitbook/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_gmail`<a id="carbonintegrationssync_gmail"></a>

Once you have successfully connected your gmail account, you can choose which emails to sync with us
using the filters parameter. Filters is a JSON object with key value pairs. It also supports AND and OR operations.
For now, we support a limited set of keys listed below.

<b>label</b>: Inbuilt Gmail labels, for example "Important" or a custom label you created.  
<b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date.
You can also use them in combination to get emails from a certain period.  
<b>is</b>: Can have the following values - starred, important, snoozed, and unread  
<b>from</b>: Email address of the sender  
<b>to</b>: Email address of the recipient  
<b>in</b>: Can have the following values - sent (sync emails sent by the user)  
<b>has</b>: Can have the following values - attachment (sync emails that have attachments)  

Using keys or values outside of the specified values can lead to unexpected behaviour.

An example of a basic query with filters can be
```json
{
    "filters": {
            "key": "label",
            "value": "Test"
        }
}
```
Which will list all emails that have the label "Test".

You can use AND and OR operation in the following way:
```json
{
    "filters": {
        "AND": [
            {
                "key": "after",
                "value": "2024/01/07"
            },
            {
                "OR": [
                    {
                        "key": "label",
                        "value": "Personal"
                    },
                    {
                        "key": "is",
                        "value": "starred"
                    }
                ]
            }
        ]
    }
}
```
This will return emails after 7th of Jan that are either starred or have the label "Personal". 
Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
in the above example.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_gmail_response = carbon.integrations.sync_gmail(
    filters={},
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    data_source_id=1,
    request_id="string_example",
    sync_attachments=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    incremental_sync=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="filters-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### sync_attachments: `Optional[bool]`<a id="sync_attachments-optionalbool"></a>

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### incremental_sync: `bool`<a id="incremental_sync-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GmailSyncInput`](./carbon/type/gmail_sync_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gmail/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_outlook`<a id="carbonintegrationssync_outlook"></a>

Once you have successfully connected your Outlook account, you can choose which emails to sync with us
using the filters and folder parameter. "folder" should be the folder you want to sync from Outlook. By default
we get messages from your inbox folder.  
Filters is a JSON object with key value pairs. It also supports AND and OR operations.
For now, we support a limited set of keys listed below.

<b>category</b>: Custom categories that you created in Outlook.  
<b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.    
<b>is</b>: Can have the following values: flagged  
<b>from</b>: Email address of the sender   

An example of a basic query with filters can be
```json
{
    "filters": {
            "key": "category",
            "value": "Test"
        }
}
```
Which will list all emails that have the category "Test".  

Specifying a custom folder in the same query
```json
{
    "folder": "Folder Name",
    "filters": {
            "key": "category",
            "value": "Test"
        }
}
```

You can use AND and OR operation in the following way:
```json
{
    "filters": {
        "AND": [
            {
                "key": "after",
                "value": "2024/01/07"
            },
            {
                "OR": [
                    {
                        "key": "category",
                        "value": "Personal"
                    },
                    {
                        "key": "category",
                        "value": "Test"
                    },
                ]
            }
        ]
    }
}
```
This will return emails after 7th of Jan that have either Personal or Test as category. 
Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
in the above example.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_outlook_response = carbon.integrations.sync_outlook(
    filters={},
    tags={},
    folder="Inbox",
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    data_source_id=1,
    request_id="string_example",
    sync_attachments=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
    incremental_sync=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="filters-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### folder: `Optional[str]`<a id="folder-optionalstr"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### sync_attachments: `Optional[bool]`<a id="sync_attachments-optionalbool"></a>

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


##### incremental_sync: `bool`<a id="incremental_sync-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`OutlookSyncInput`](./carbon/type/outlook_sync_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/outlook/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_repos`<a id="carbonintegrationssync_repos"></a>

You can retreive repos your token has access to using /integrations/github/repos and sync their content. 
You can also pass full name of any public repository (username/repo-name). This will store the repo content with 
carbon which can be accessed through /integrations/items/list endpoint. Maximum of 25 repositories are accepted per request.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_repos_response = carbon.integrations.sync_repos(
    repos=["string_example"],
    data_source_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### repos: [`GithubFetchReposRequestRepos`](./carbon/type/github_fetch_repos_request_repos.py)<a id="repos-githubfetchreposrequestreposcarbontypegithub_fetch_repos_request_repospy"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`GithubFetchReposRequest`](./carbon/type/github_fetch_repos_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/github/sync_repos` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_rss_feed`<a id="carbonintegrationssync_rss_feed"></a>

Rss Feed

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_rss_feed_response = carbon.integrations.sync_rss_feed(
    url="string_example",
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    request_id="string_example",
    data_source_tags={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### data_source_tags: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="data_source_tags-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`RSSFeedInput`](./carbon/type/rss_feed_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/rss_feed` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_s3_files`<a id="carbonintegrationssync_s3_files"></a>

After optionally loading the items via /integrations/items/sync and integrations/items/list, use the bucket name 
and object key as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
data with the selected items or modify the sync behavior

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_s3_files_response = carbon.integrations.sync_s3_files(
    ids=[{}],
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    max_items_per_chunk=1,
    set_page_as_boundary=False,
    data_source_id=1,
    request_id="string_example",
    use_ocr=False,
    parse_pdf_tables_with_ocr=False,
    file_sync_config={
        "auto_synced_source_types": ["ARTICLE"],
        "sync_attachments": False,
        "detect_audio_language": False,
        "transcription_service": "assemblyai",
        "include_speaker_labels": False,
        "split_rows": False,
        "generate_chunks_only": False,
        "store_file_only": False,
        "skip_file_processing": False,
        "parsed_text_format": "PLAIN_TEXT",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### ids: List[`S3GetFileInput`]<a id="ids-lists3getfileinput"></a>

Each input should be one of the following: A bucket name, a bucket name and a prefix, or a          bucket name and an object key. A prefix is the common path for all objects you want to sync.          Paths should end with a forward slash.

##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### max_items_per_chunk: `Optional[int]`<a id="max_items_per_chunk-optionalint"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.

##### set_page_as_boundary: `bool`<a id="set_page_as_boundary-bool"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

##### use_ocr: `Optional[bool]`<a id="use_ocr-optionalbool"></a>

##### parse_pdf_tables_with_ocr: `Optional[bool]`<a id="parse_pdf_tables_with_ocr-optionalbool"></a>

##### file_sync_config: [`FileSyncConfigNullable`](./carbon/type/file_sync_config_nullable.py)<a id="file_sync_config-filesyncconfignullablecarbontypefile_sync_config_nullablepy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`S3FileSyncInput`](./carbon/type/s3_file_sync_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/s3/files` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.integrations.sync_slack`<a id="carbonintegrationssync_slack"></a>

You can list all conversations using the endpoint /integrations/slack/conversations. The ID of 
conversation will be used as an input for this endpoint with timestamps as optional filters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
sync_slack_response = carbon.integrations.sync_slack(
    filters={
        "conversation_id": "conversation_id_example",
    },
    tags={},
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    embedding_model="OPENAI",
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    data_source_id=1,
    request_id="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`SlackFilters`](./carbon/type/slack_filters.py)<a id="filters-slackfilterscarbontypeslack_filterspy"></a>


##### tags: `Optional[Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]]`<a id="tags-optionaldictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### data_source_id: `Optional[int]`<a id="data_source_id-optionalint"></a>

##### request_id: `Optional[str]`<a id="request_id-optionalstr"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SlackSyncRequest`](./carbon/type/slack_sync_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/slack/sync` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.organizations.get`<a id="carbonorganizationsget"></a>

Get Organization

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_response = carbon.organizations.get()
```

#### 🔄 Return<a id="🔄-return"></a>

[`OrganizationResponse`](./carbon/pydantic/organization_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/organization` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.organizations.update`<a id="carbonorganizationsupdate"></a>

Update Organization

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
update_response = carbon.organizations.update(
    global_user_config={},
    data_source_configs={
        "key": {
            "allowed_file_formats": [],
        },
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### global_user_config: [`UserConfigurationNullable`](./carbon/type/user_configuration_nullable.py)<a id="global_user_config-userconfigurationnullablecarbontypeuser_configuration_nullablepy"></a>


##### data_source_configs: [`UpdateOrganizationInputDataSourceConfigs`](./carbon/type/update_organization_input_data_source_configs.py)<a id="data_source_configs-updateorganizationinputdatasourceconfigscarbontypeupdate_organization_input_data_source_configspy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UpdateOrganizationInput`](./carbon/type/update_organization_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/organization/update` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.organizations.update_stats`<a id="carbonorganizationsupdate_stats"></a>

Use this endpoint to reaggregate the statistics for an organization, for example aggregate_file_size. The reaggregation
process is asyncronous so a webhook will be sent with the event type being FILE_STATISTICS_AGGREGATED to notify when the
process is complee. After this aggregation is complete, the updated statistics can be retrieved using the /organization
endpoint. The response of /organization willalso contain a timestamp of the last time the statistics were reaggregated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
update_stats_response = carbon.organizations.update_stats()
```

#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/organization/statistics` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.users.delete`<a id="carbonusersdelete"></a>

Delete Users

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_response = carbon.users.delete(
    customer_ids=["string_example"],
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_ids: [`DeleteUsersInputCustomerIds`](./carbon/type/delete_users_input_customer_ids.py)<a id="customer_ids-deleteusersinputcustomeridscarbontypedelete_users_input_customer_idspy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`DeleteUsersInput`](./carbon/type/delete_users_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_users` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.users.get`<a id="carbonusersget"></a>

User Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_response = carbon.users.get(
    customer_id="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UserRequestContent`](./carbon/type/user_request_content.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserResponse`](./carbon/pydantic/user_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.users.list`<a id="carbonuserslist"></a>

List users within an organization

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_response = carbon.users.list(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    filters={},
    order_by="created_at",
    order_dir="asc",
    include_count=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### filters: [`ListUsersFilters`](./carbon/type/list_users_filters.py)<a id="filters-listusersfilterscarbontypelist_users_filterspy"></a>


##### order_by: [`ListUsersOrderByTypes`](./carbon/type/list_users_order_by_types.py)<a id="order_by-listusersorderbytypescarbontypelist_users_order_by_typespy"></a>

##### order_dir: [`OrderDirV2`](./carbon/type/order_dir_v2.py)<a id="order_dir-orderdirv2carbontypeorder_dir_v2py"></a>

##### include_count: `bool`<a id="include_count-bool"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ListUsersRequest`](./carbon/type/list_users_request.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserListResponse`](./carbon/pydantic/user_list_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/list_users` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.users.toggle_user_features`<a id="carbonuserstoggle_user_features"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Toggle User Features

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
toggle_user_features_response = carbon.users.toggle_user_features(
    configuration_key_name="sparse_vectors",
    value={},
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### configuration_key_name: [`ConfigurationKeys`](./carbon/type/configuration_keys.py)<a id="configuration_key_name-configurationkeyscarbontypeconfiguration_keyspy"></a>

##### value: `Dict[str, Union[bool, date, datetime, dict, float, int, list, str, None]]`<a id="value-dictstr-unionbool-date-datetime-dict-float-int-list-str-none"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ModifyUserConfigurationInput`](./carbon/type/modify_user_configuration_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/modify_user_configuration` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.users.update_users`<a id="carbonusersupdate_users"></a>

Update Users

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
update_users_response = carbon.users.update_users(
    customer_ids=["string_example"],
    auto_sync_enabled_sources=["string_example"],
    max_files=-1,
    max_files_per_upload=-1,
    max_characters=-1,
    max_characters_per_file=-1,
    max_characters_per_upload=-1,
    auto_sync_interval=-1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_ids: [`UpdateUsersInputCustomerIds`](./carbon/type/update_users_input_customer_ids.py)<a id="customer_ids-updateusersinputcustomeridscarbontypeupdate_users_input_customer_idspy"></a>

##### auto_sync_enabled_sources: Union[List[[`DataSourceType`](./carbon/type/data_source_type.py)], [`DataSourceExtendedInput`](./carbon/type/data_source_extended_input.py)]<a id="auto_sync_enabled_sources-unionlistdatasourcetypecarbontypedata_source_typepy-datasourceextendedinputcarbontypedata_source_extended_inputpy"></a>


List of data source types to enable auto sync for. Empty array will remove all sources          and the string \\\"ALL\\\" will enable it for all data sources

##### max_files: `Optional[int]`<a id="max_files-optionalint"></a>

Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit.

##### max_files_per_upload: `Optional[int]`<a id="max_files_per_upload-optionalint"></a>

Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit.

##### max_characters: `Optional[int]`<a id="max_characters-optionalint"></a>

Custom character upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more characters than this limit. If not set, or if set to -1,         then the user will have no limit.

##### max_characters_per_file: `Optional[int]`<a id="max_characters_per_file-optionalint"></a>

A single file upload from the user can not exceed this character limit.         If set, then the file will not be synced if it exceeds this limit. If not set, or if set to -1, then the          user will have no limit.

##### max_characters_per_upload: `Optional[int]`<a id="max_characters_per_upload-optionalint"></a>

Custom character upload limit for the user across a single upload.         If set, then the user won't be able to sync more than this many characters in one upload.          If not set, or if set to -1, then the user will have no limit.

##### auto_sync_interval: `Optional[int]`<a id="auto_sync_interval-optionalint"></a>

The interval in hours at which the user's data sources should be synced. If not set or set to -1,          the user will be synced at the organization level interval or default interval if that is also not set.          Must be one of [3, 6, 12, 24]

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UpdateUsersInput`](./carbon/type/update_users_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/update_users` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.users.who_am_i`<a id="carbonuserswho_am_i"></a>

Me Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
who_am_i_response = carbon.users.who_am_i()
```

#### 🔄 Return<a id="🔄-return"></a>

[`UserResponse`](./carbon/pydantic/user_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/whoami` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.fetch_urls`<a id="carbonutilitiesfetch_urls"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Extracts all URLs from a webpage. 

Args:
    url (str): URL of the webpage

Returns:
    FetchURLsResponse: A response object with a list of URLs extracted from the webpage and the webpage content.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
fetch_urls_response = carbon.utilities.fetch_urls(
    url="url_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`FetchURLsResponse`](./carbon/pydantic/fetch_urls_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/fetch_urls` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.fetch_webpage`<a id="carbonutilitiesfetch_webpage"></a>

Fetch Urls V2

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
fetch_webpage_response = carbon.utilities.fetch_webpage(
    url="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`FetchURLsRequest`](./carbon/type/fetch_urls_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/fetch_webpage` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.fetch_youtube_transcripts`<a id="carbonutilitiesfetch_youtube_transcripts"></a>

Fetches english transcripts from YouTube videos.

Args:
    id (str): The ID of the YouTube video. 
    raw (bool): Whether to return the raw transcript or not. Defaults to False.

Returns:
    dict: A dictionary with the transcript of the YouTube video.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
fetch_youtube_transcripts_response = carbon.utilities.fetch_youtube_transcripts(
    id="id_example",
    raw=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

##### raw: `bool`<a id="raw-bool"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`YoutubeTranscriptResponse`](./carbon/pydantic/youtube_transcript_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/fetch_youtube_transcript` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.process_sitemap`<a id="carbonutilitiesprocess_sitemap"></a>

Retrieves all URLs from a sitemap, which can subsequently be utilized with our `web_scrape` endpoint.

<!--Args:
    url (str): URL of the sitemap

Returns:
    dict: A dictionary with a list of URLs extracted from the sitemap.-->

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
process_sitemap_response = carbon.utilities.process_sitemap(
    url="url_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/process_sitemap` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.scrape_sitemap`<a id="carbonutilitiesscrape_sitemap"></a>

Extracts all URLs from a sitemap and performs a web scrape on each of them.

Args:
    sitemap_url (str): URL of the sitemap

Returns:
    dict: A response object with the status of the scraping job message.-->

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
scrape_sitemap_response = carbon.utilities.scrape_sitemap(
    url="string_example",
    tags={
        "key": "string_example",
    },
    max_pages_to_scrape=1,
    chunk_size=1500,
    chunk_overlap=20,
    skip_embedding_generation=False,
    enable_auto_sync=False,
    generate_sparse_vectors=False,
    prepend_filename_to_chunks=False,
    html_tags_to_skip=[],
    css_classes_to_skip=[],
    css_selectors_to_skip=[],
    embedding_model="OPENAI",
    url_paths_to_include=[],
    url_paths_to_exclude=[],
    urls_to_scrape=[],
    download_css_and_media=False,
    generate_chunks_only=False,
    store_file_only=False,
    use_premium_proxies=False,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

##### tags: [`SitemapScrapeRequestTags`](./carbon/type/sitemap_scrape_request_tags.py)<a id="tags-sitemapscraperequesttagscarbontypesitemap_scrape_request_tagspy"></a>

##### max_pages_to_scrape: `Optional[int]`<a id="max_pages_to_scrape-optionalint"></a>

##### chunk_size: `Optional[int]`<a id="chunk_size-optionalint"></a>

##### chunk_overlap: `Optional[int]`<a id="chunk_overlap-optionalint"></a>

##### skip_embedding_generation: `Optional[bool]`<a id="skip_embedding_generation-optionalbool"></a>

##### enable_auto_sync: `Optional[bool]`<a id="enable_auto_sync-optionalbool"></a>

##### generate_sparse_vectors: `Optional[bool]`<a id="generate_sparse_vectors-optionalbool"></a>

##### prepend_filename_to_chunks: `Optional[bool]`<a id="prepend_filename_to_chunks-optionalbool"></a>

##### html_tags_to_skip: [`SitemapScrapeRequestHtmlTagsToSkip`](./carbon/type/sitemap_scrape_request_html_tags_to_skip.py)<a id="html_tags_to_skip-sitemapscraperequesthtmltagstoskipcarbontypesitemap_scrape_request_html_tags_to_skippy"></a>

##### css_classes_to_skip: [`SitemapScrapeRequestCssClassesToSkip`](./carbon/type/sitemap_scrape_request_css_classes_to_skip.py)<a id="css_classes_to_skip-sitemapscraperequestcssclassestoskipcarbontypesitemap_scrape_request_css_classes_to_skippy"></a>

##### css_selectors_to_skip: [`SitemapScrapeRequestCssSelectorsToSkip`](./carbon/type/sitemap_scrape_request_css_selectors_to_skip.py)<a id="css_selectors_to_skip-sitemapscraperequestcssselectorstoskipcarbontypesitemap_scrape_request_css_selectors_to_skippy"></a>

##### embedding_model: [`EmbeddingGenerators`](./carbon/type/embedding_generators.py)<a id="embedding_model-embeddinggeneratorscarbontypeembedding_generatorspy"></a>

##### url_paths_to_include: [`SitemapScrapeRequestUrlPathsToInclude`](./carbon/type/sitemap_scrape_request_url_paths_to_include.py)<a id="url_paths_to_include-sitemapscraperequesturlpathstoincludecarbontypesitemap_scrape_request_url_paths_to_includepy"></a>

##### url_paths_to_exclude: [`SitemapScrapeRequestUrlPathsToExclude`](./carbon/type/sitemap_scrape_request_url_paths_to_exclude.py)<a id="url_paths_to_exclude-sitemapscraperequesturlpathstoexcludecarbontypesitemap_scrape_request_url_paths_to_excludepy"></a>

##### urls_to_scrape: [`SitemapScrapeRequestUrlsToScrape`](./carbon/type/sitemap_scrape_request_urls_to_scrape.py)<a id="urls_to_scrape-sitemapscraperequesturlstoscrapecarbontypesitemap_scrape_request_urls_to_scrapepy"></a>

##### download_css_and_media: `Optional[bool]`<a id="download_css_and_media-optionalbool"></a>

Whether the scraper should download css and media from the page (images, fonts, etc). Scrapes          might take longer to finish with this flag enabled, but the success rate is improved.

##### generate_chunks_only: `bool`<a id="generate_chunks_only-bool"></a>

If this flag is enabled, the file will be chunked and stored with Carbon,           but no embeddings will be generated. This overrides the skip_embedding_generation flag.

##### store_file_only: `bool`<a id="store_file_only-bool"></a>

If this flag is enabled, the file will be stored with Carbon, but no processing will be done.

##### use_premium_proxies: `bool`<a id="use_premium_proxies-bool"></a>

If the default proxies are blocked and not returning results, this flag can be enabled to use              alternate proxies (residential and office). Scrapes might take longer to finish with this flag enabled.         

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SitemapScrapeRequest`](./carbon/type/sitemap_scrape_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/scrape_sitemap` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.scrape_web`<a id="carbonutilitiesscrape_web"></a>

Conduct a web scrape on a given webpage URL. Our web scraper is fully compatible with JavaScript and supports recursion depth, enabling you to efficiently extract all content from the target website.

<!--Args:
    scraping_requests (List[WebscrapeRequest]): A list of WebscrapeRequest objects.

    
Returns:
    dict: A response object with the status of the scraping job message.-->

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
scrape_web_response = carbon.utilities.scrape_web(
    body=[
        {
            "url": "url_example",
            "recursion_depth": 3,
            "max_pages_to_scrape": 100,
            "chunk_size": 1500,
            "chunk_overlap": 20,
            "skip_embedding_generation": False,
            "enable_auto_sync": False,
            "generate_sparse_vectors": False,
            "prepend_filename_to_chunks": False,
            "html_tags_to_skip": [],
            "css_classes_to_skip": [],
            "css_selectors_to_skip": [],
            "embedding_model": "OPENAI",
            "url_paths_to_include": [],
            "download_css_and_media": False,
            "generate_chunks_only": False,
            "store_file_only": False,
            "use_premium_proxies": False,
        }
    ],
)
```

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UtilitiesScrapeWebRequest`](./carbon/type/utilities_scrape_web_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/web_scrape` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.search_urls`<a id="carbonutilitiessearch_urls"></a>

Perform a web search and obtain a list of relevant URLs.

As an illustration, when you perform a search for “content related to MRNA,” you will receive a list of links such as the following:

    - https://tomrenz.substack.com/p/mrna-and-why-it-matters

    - https://www.statnews.com/2020/11/10/the-story-of-mrna-how-a-once-dismissed-idea-became-a-leading-technology-in-the-covid-vaccine-race/

    - https://www.statnews.com/2022/11/16/covid-19-vaccines-were-a-success-but-mrna-still-has-a-delivery-problem/
    
    - https://joomi.substack.com/p/were-still-being-misled-about-how

Subsequently, you can submit these links to the web_scrape endpoint in order to retrieve the content of the respective web pages.

Args:
    query (str): Query to search for

Returns:
    FetchURLsResponse: A response object with a list of URLs for a given search query.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
search_urls_response = carbon.utilities.search_urls(
    query="query_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `str`<a id="query-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`FetchURLsResponse`](./carbon/pydantic/fetch_urls_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/search_urls` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.utilities.user_webpages`<a id="carbonutilitiesuser_webpages"></a>

User Web Pages

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
user_webpages_response = carbon.utilities.user_webpages(
    filters={},
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="asc",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`UserWebPagesFilters`](./carbon/type/user_web_pages_filters.py)<a id="filters-userwebpagesfilterscarbontypeuser_web_pages_filterspy"></a>


##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`UserWebPageOrderByTypes`](./carbon/type/user_web_page_order_by_types.py)<a id="order_by-userwebpageorderbytypescarbontypeuser_web_page_order_by_typespy"></a>

##### order_dir: [`OrderDirV2`](./carbon/type/order_dir_v2.py)<a id="order_dir-orderdirv2carbontypeorder_dir_v2py"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UserWebPagesRequest`](./carbon/type/user_web_pages_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_webpages` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.webhooks.add_url`<a id="carbonwebhooksadd_url"></a>

Add Webhook Url

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
add_url_response = carbon.webhooks.add_url(
    url="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `str`<a id="url-str"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`AddWebhookProps`](./carbon/type/add_webhook_props.py)
#### 🔄 Return<a id="🔄-return"></a>

[`Webhook`](./carbon/pydantic/webhook.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/add_webhook` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.webhooks.delete_url`<a id="carbonwebhooksdelete_url"></a>

Delete Webhook Url

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_url_response = carbon.webhooks.delete_url(
    webhook_id=1,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### webhook_id: `int`<a id="webhook_id-int"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`GenericSuccessResponse`](./carbon/pydantic/generic_success_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_webhook/{webhook_id}` `delete`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.webhooks.urls`<a id="carbonwebhooksurls"></a>

Webhook Urls

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
urls_response = carbon.webhooks.urls(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    filters={
        "ids": [],
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`WebhookOrderByColumns`](./carbon/type/webhook_order_by_columns.py)<a id="order_by-webhookorderbycolumnscarbontypewebhook_order_by_columnspy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### filters: [`WebhookFilters`](./carbon/type/webhook_filters.py)<a id="filters-webhookfilterscarbontypewebhook_filterspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`WebhookQueryInput`](./carbon/type/webhook_query_input.py)
#### 🔄 Return<a id="🔄-return"></a>

[`WebhookQueryResponse`](./carbon/pydantic/webhook_query_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/webhooks` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.white_label.create`<a id="carbonwhite_labelcreate"></a>

Create White Labels

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
create_response = carbon.white_label.create(
    body=[
        {
            "data_source_type": "GOOGLE_DRIVE",
            "credentials": {
                "client_id": "client_id_example",
                "redirect_uri": "redirect_uri_example",
            },
        }
    ],
)
```

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`WhiteLabelCreateRequest`](./carbon/type/white_label_create_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/white_label/create` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.white_label.delete`<a id="carbonwhite_labeldelete"></a>

Delete White Labels

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_response = carbon.white_label.delete(
    ids=[1],
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### ids: [`DeleteWhiteLabelRequestIds`](./carbon/type/delete_white_label_request_ids.py)<a id="ids-deletewhitelabelrequestidscarbontypedelete_white_label_request_idspy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`DeleteWhiteLabelRequest`](./carbon/type/delete_white_label_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/white_label/delete` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.white_label.list`<a id="carbonwhite_labellist"></a>

List White Labels

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_response = carbon.white_label.list(
    pagination={
        "limit": 10,
        "offset": 0,
        "starting_id": 0,
    },
    order_by="created_at",
    order_dir="desc",
    filters={
        "ids": [],
        "data_source_type": [],
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./carbon/type/pagination.py)<a id="pagination-paginationcarbontypepaginationpy"></a>


##### order_by: [`WhiteLabelOrderByColumns`](./carbon/type/white_label_order_by_columns.py)<a id="order_by-whitelabelorderbycolumnscarbontypewhite_label_order_by_columnspy"></a>

##### order_dir: [`OrderDir`](./carbon/type/order_dir.py)<a id="order_dir-orderdircarbontypeorder_dirpy"></a>

##### filters: [`WhiteLabelFilters`](./carbon/type/white_label_filters.py)<a id="filters-whitelabelfilterscarbontypewhite_label_filterspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ListWhiteLabelRequest`](./carbon/type/list_white_label_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/white_label/list` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `carbon.white_label.update`<a id="carbonwhite_labelupdate"></a>

Update White Label

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
update_response = carbon.white_label.update(
    body={
        "data_source_type": "GOOGLE_DRIVE",
        "credentials": {
            "client_id": "client_id_example",
            "redirect_uri": "redirect_uri_example",
        },
    },
    data_source_type="INTERCOM",
    credentials={
        "client_id": "client_id_example",
        "redirect_uri": "redirect_uri_example",
    },
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_type: `str`<a id="data_source_type-str"></a>

##### credentials: [`Credentials`](./carbon/type/credentials.py)<a id="credentials-credentialscarbontypecredentialspy"></a>


#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`WhiteLabelUpdateRequest`](./carbon/type/white_label_update_request.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/white_label/update` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This Python package is automatically generated by [Konfig](https://konfigthis.com)

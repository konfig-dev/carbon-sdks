=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'forwardable'

# Common files
require 'carbon_ruby_sdk/api_client'
require 'carbon_ruby_sdk/api_error'
require 'carbon_ruby_sdk/version'
require 'carbon_ruby_sdk/configuration'

# Models
require 'carbon_ruby_sdk/models/account'
require 'carbon_ruby_sdk/models/account_filters'
require 'carbon_ruby_sdk/models/account_response'
require 'carbon_ruby_sdk/models/accounts_order_by'
require 'carbon_ruby_sdk/models/accounts_order_by_nullable'
require 'carbon_ruby_sdk/models/accounts_request'
require 'carbon_ruby_sdk/models/add_data_source_tags_input'
require 'carbon_ruby_sdk/models/add_webhook_props'
require 'carbon_ruby_sdk/models/address'
require 'carbon_ruby_sdk/models/authentication_property'
require 'carbon_ruby_sdk/models/auto_sync_enabled_sources_property'
require 'carbon_ruby_sdk/models/auto_synced_source_types_property_inner'
require 'carbon_ruby_sdk/models/azure_blob_auth_request'
require 'carbon_ruby_sdk/models/azure_blob_file_sync_input'
require 'carbon_ruby_sdk/models/azure_blob_get_file_input'
require 'carbon_ruby_sdk/models/azure_blob_storage_authentication'
require 'carbon_ruby_sdk/models/azure_blob_storage_types'
require 'carbon_ruby_sdk/models/base_includes'
require 'carbon_ruby_sdk/models/body_create_upload_file_uploadfile_post'
require 'carbon_ruby_sdk/models/chunk_properties'
require 'carbon_ruby_sdk/models/chunk_properties_nullable'
require 'carbon_ruby_sdk/models/chunks_and_embeddings'
require 'carbon_ruby_sdk/models/chunks_and_embeddings_upload_input'
require 'carbon_ruby_sdk/models/cold_storage_props'
require 'carbon_ruby_sdk/models/comments_input'
require 'carbon_ruby_sdk/models/comments_order_by'
require 'carbon_ruby_sdk/models/comments_response'
require 'carbon_ruby_sdk/models/commit'
require 'carbon_ruby_sdk/models/commit_user'
require 'carbon_ruby_sdk/models/commit_user_nullable'
require 'carbon_ruby_sdk/models/commits_input'
require 'carbon_ruby_sdk/models/commits_response'
require 'carbon_ruby_sdk/models/configuration_keys'
require 'carbon_ruby_sdk/models/confluence_authentication'
require 'carbon_ruby_sdk/models/confluence_authentication_source'
require 'carbon_ruby_sdk/models/confluence_file_types'
require 'carbon_ruby_sdk/models/connect_data_source_input'
require 'carbon_ruby_sdk/models/connect_data_source_response'
require 'carbon_ruby_sdk/models/contact'
require 'carbon_ruby_sdk/models/contact_filters'
require 'carbon_ruby_sdk/models/contacts_order_by'
require 'carbon_ruby_sdk/models/contacts_order_by_nullable'
require 'carbon_ruby_sdk/models/contacts_request'
require 'carbon_ruby_sdk/models/contacts_response'
require 'carbon_ruby_sdk/models/credentials'
require 'carbon_ruby_sdk/models/custom_credentials_type'
require 'carbon_ruby_sdk/models/data_source_configuration'
require 'carbon_ruby_sdk/models/data_source_extended_input'
require 'carbon_ruby_sdk/models/data_source_last_sync_actions'
require 'carbon_ruby_sdk/models/data_source_sync_statuses'
require 'carbon_ruby_sdk/models/data_source_type'
require 'carbon_ruby_sdk/models/data_source_type_nullable'
require 'carbon_ruby_sdk/models/delete_files_query_input'
require 'carbon_ruby_sdk/models/delete_files_v2_query_input'
require 'carbon_ruby_sdk/models/delete_users_input'
require 'carbon_ruby_sdk/models/delete_white_label_request'
require 'carbon_ruby_sdk/models/directory_item'
require 'carbon_ruby_sdk/models/document360_connect_request'
require 'carbon_ruby_sdk/models/document_response'
require 'carbon_ruby_sdk/models/document_response_list'
require 'carbon_ruby_sdk/models/email'
require 'carbon_ruby_sdk/models/embedding_and_chunk'
require 'carbon_ruby_sdk/models/embedding_generators'
require 'carbon_ruby_sdk/models/embedding_generators_nullable'
require 'carbon_ruby_sdk/models/embedding_model'
require 'carbon_ruby_sdk/models/embedding_properties'
require 'carbon_ruby_sdk/models/embedding_storage_status'
require 'carbon_ruby_sdk/models/embeddings_and_chunks_filters'
require 'carbon_ruby_sdk/models/embeddings_and_chunks_order_by_columns'
require 'carbon_ruby_sdk/models/embeddings_and_chunks_query_input'
require 'carbon_ruby_sdk/models/embeddings_and_chunks_query_input_v2'
require 'carbon_ruby_sdk/models/embeddings_and_chunks_response'
require 'carbon_ruby_sdk/models/event'
require 'carbon_ruby_sdk/models/external_file_sync_statuses'
require 'carbon_ruby_sdk/models/external_source_item'
require 'carbon_ruby_sdk/models/external_source_items_order_by'
require 'carbon_ruby_sdk/models/fetch_urls_request'
require 'carbon_ruby_sdk/models/fetch_urls_response'
require 'carbon_ruby_sdk/models/file_content_types'
require 'carbon_ruby_sdk/models/file_content_types_nullable'
require 'carbon_ruby_sdk/models/file_formats'
require 'carbon_ruby_sdk/models/file_formats_nullable'
require 'carbon_ruby_sdk/models/file_statistics'
require 'carbon_ruby_sdk/models/file_statistics_nullable'
require 'carbon_ruby_sdk/models/file_status'
require 'carbon_ruby_sdk/models/file_sync_config'
require 'carbon_ruby_sdk/models/file_sync_config_nullable'
require 'carbon_ruby_sdk/models/files_input'
require 'carbon_ruby_sdk/models/files_response'
require 'carbon_ruby_sdk/models/fresh_desk_connect_request'
require 'carbon_ruby_sdk/models/freskdesk_authentication'
require 'carbon_ruby_sdk/models/freskdesk_authentication_source'
require 'carbon_ruby_sdk/models/generic_success_response'
require 'carbon_ruby_sdk/models/get_embedding_documents_body'
require 'carbon_ruby_sdk/models/gitbook_authetication'
require 'carbon_ruby_sdk/models/gitbook_authetication_source'
require 'carbon_ruby_sdk/models/gitbook_connect_request'
require 'carbon_ruby_sdk/models/gitbook_file_types'
require 'carbon_ruby_sdk/models/gitbook_sync_request'
require 'carbon_ruby_sdk/models/github_authentication'
require 'carbon_ruby_sdk/models/github_authentication_source'
require 'carbon_ruby_sdk/models/github_connect_request'
require 'carbon_ruby_sdk/models/github_fetch_repos_request'
require 'carbon_ruby_sdk/models/github_file_types'
require 'carbon_ruby_sdk/models/gmail_sync_input'
require 'carbon_ruby_sdk/models/gong_authentication'
require 'carbon_ruby_sdk/models/gong_authentication_source'
require 'carbon_ruby_sdk/models/gong_file_types'
require 'carbon_ruby_sdk/models/google_drive_credentials'
require 'carbon_ruby_sdk/models/google_drive_white_label_input'
require 'carbon_ruby_sdk/models/google_drive_white_label_input_data_source_type'
require 'carbon_ruby_sdk/models/guru_authentication'
require 'carbon_ruby_sdk/models/guru_authentication_source'
require 'carbon_ruby_sdk/models/guru_connect_request'
require 'carbon_ruby_sdk/models/guru_file_types'
require 'carbon_ruby_sdk/models/http_validation_error'
require 'carbon_ruby_sdk/models/head_or_base'
require 'carbon_ruby_sdk/models/helpdesk_file_types'
require 'carbon_ruby_sdk/models/hybrid_search_tuning_params'
require 'carbon_ruby_sdk/models/hybrid_search_tuning_params_nullable'
require 'carbon_ruby_sdk/models/ids_property'
require 'carbon_ruby_sdk/models/intercom_file_types'
require 'carbon_ruby_sdk/models/issue'
require 'carbon_ruby_sdk/models/issue_pr'
require 'carbon_ruby_sdk/models/issue_pr_nullable'
require 'carbon_ruby_sdk/models/issues_filter'
require 'carbon_ruby_sdk/models/issues_input'
require 'carbon_ruby_sdk/models/issues_order_by'
require 'carbon_ruby_sdk/models/issues_response'
require 'carbon_ruby_sdk/models/item_types_property_inner'
require 'carbon_ruby_sdk/models/label'
require 'carbon_ruby_sdk/models/lead'
require 'carbon_ruby_sdk/models/lead_filters'
require 'carbon_ruby_sdk/models/leads_order_by'
require 'carbon_ruby_sdk/models/leads_order_by_nullable'
require 'carbon_ruby_sdk/models/leads_request'
require 'carbon_ruby_sdk/models/leads_response'
require 'carbon_ruby_sdk/models/list_data_source_items_request'
require 'carbon_ruby_sdk/models/list_data_source_items_response'
require 'carbon_ruby_sdk/models/list_items_filters'
require 'carbon_ruby_sdk/models/list_items_filters_nullable'
require 'carbon_ruby_sdk/models/list_request'
require 'carbon_ruby_sdk/models/list_response'
require 'carbon_ruby_sdk/models/list_user_response'
require 'carbon_ruby_sdk/models/list_users_filters'
require 'carbon_ruby_sdk/models/list_users_order_by_types'
require 'carbon_ruby_sdk/models/list_users_request'
require 'carbon_ruby_sdk/models/list_white_label_request'
require 'carbon_ruby_sdk/models/location_property_inner'
require 'carbon_ruby_sdk/models/modify_cold_storage_parameters_query_input'
require 'carbon_ruby_sdk/models/modify_user_configuration_input'
require 'carbon_ruby_sdk/models/move_to_hot_storage_query_input'
require 'carbon_ruby_sdk/models/multi_modal_embedding_generators'
require 'carbon_ruby_sdk/models/notion_authentication'
require 'carbon_ruby_sdk/models/notion_authentication_source'
require 'carbon_ruby_sdk/models/o_auth_authentication'
require 'carbon_ruby_sdk/models/o_auth_url_request'
require 'carbon_ruby_sdk/models/oauth_based_connectors'
require 'carbon_ruby_sdk/models/object_type'
require 'carbon_ruby_sdk/models/one_drive_authentication'
require 'carbon_ruby_sdk/models/one_drive_authentication_source'
require 'carbon_ruby_sdk/models/one_drive_sharepoint_credentials'
require 'carbon_ruby_sdk/models/one_drive_sharepoint_white_label_input'
require 'carbon_ruby_sdk/models/one_drive_sharepoint_white_label_input_data_source_type'
require 'carbon_ruby_sdk/models/opportunities_order_by'
require 'carbon_ruby_sdk/models/opportunities_order_by_nullable'
require 'carbon_ruby_sdk/models/opportunities_request'
require 'carbon_ruby_sdk/models/opportunities_response'
require 'carbon_ruby_sdk/models/opportunity'
require 'carbon_ruby_sdk/models/opportunity_filters'
require 'carbon_ruby_sdk/models/opportunity_status'
require 'carbon_ruby_sdk/models/opportunity_status_nullable'
require 'carbon_ruby_sdk/models/order_dir'
require 'carbon_ruby_sdk/models/order_dir_v2'
require 'carbon_ruby_sdk/models/order_dir_v2_nullable'
require 'carbon_ruby_sdk/models/organization_response'
require 'carbon_ruby_sdk/models/organization_user_data_source_api'
require 'carbon_ruby_sdk/models/organization_user_data_source_filters'
require 'carbon_ruby_sdk/models/organization_user_data_source_order_by_columns'
require 'carbon_ruby_sdk/models/organization_user_data_source_query_input'
require 'carbon_ruby_sdk/models/organization_user_data_source_response'
require 'carbon_ruby_sdk/models/organization_user_file_tag_create'
require 'carbon_ruby_sdk/models/organization_user_file_tags_remove'
require 'carbon_ruby_sdk/models/organization_user_files_to_sync_filters'
require 'carbon_ruby_sdk/models/organization_user_files_to_sync_order_by_types'
require 'carbon_ruby_sdk/models/organization_user_files_to_sync_query_input'
require 'carbon_ruby_sdk/models/outh_url_response'
require 'carbon_ruby_sdk/models/outlook_sync_input'
require 'carbon_ruby_sdk/models/pr_comment'
require 'carbon_ruby_sdk/models/pr_commit'
require 'carbon_ruby_sdk/models/pr_file'
require 'carbon_ruby_sdk/models/pr_order_by'
require 'carbon_ruby_sdk/models/pr_state'
require 'carbon_ruby_sdk/models/pr_state_input'
require 'carbon_ruby_sdk/models/pagination'
require 'carbon_ruby_sdk/models/parsed_text_formats'
require 'carbon_ruby_sdk/models/parsed_text_formats_nullable'
require 'carbon_ruby_sdk/models/partial_account'
require 'carbon_ruby_sdk/models/partial_account_nullable'
require 'carbon_ruby_sdk/models/partial_contact'
require 'carbon_ruby_sdk/models/partial_contact_nullable'
require 'carbon_ruby_sdk/models/partial_owner'
require 'carbon_ruby_sdk/models/partial_owner_nullable'
require 'carbon_ruby_sdk/models/phone_number'
require 'carbon_ruby_sdk/models/presigned_url_response'
require 'carbon_ruby_sdk/models/pull_request'
require 'carbon_ruby_sdk/models/pull_request_extended'
require 'carbon_ruby_sdk/models/pull_request_filters'
require 'carbon_ruby_sdk/models/pull_request_response'
require 'carbon_ruby_sdk/models/pull_requests_input'
require 'carbon_ruby_sdk/models/rss_feed_input'
require 'carbon_ruby_sdk/models/rank_property'
require 'carbon_ruby_sdk/models/raw_text_input'
require 'carbon_ruby_sdk/models/raw_transcript_property_inner_value'
require 'carbon_ruby_sdk/models/remove_data_source_tags_input'
require 'carbon_ruby_sdk/models/rerank_params'
require 'carbon_ruby_sdk/models/rerank_params_nullable'
require 'carbon_ruby_sdk/models/resync_file_query_input'
require 'carbon_ruby_sdk/models/revoke_access_token_input'
require 'carbon_ruby_sdk/models/s3_auth_request'
require 'carbon_ruby_sdk/models/s3_authentication'
require 'carbon_ruby_sdk/models/s3_authentication_source'
require 'carbon_ruby_sdk/models/s3_file_sync_input'
require 'carbon_ruby_sdk/models/s3_get_file_input'
require 'carbon_ruby_sdk/models/salesforce_authentication'
require 'carbon_ruby_sdk/models/salesforce_authentication_source'
require 'carbon_ruby_sdk/models/sent_webhook_payload'
require 'carbon_ruby_sdk/models/sent_webhook_payload_object'
require 'carbon_ruby_sdk/models/sent_webhook_payload_object_additional_information'
require 'carbon_ruby_sdk/models/sent_webhook_payload_object_object_id'
require 'carbon_ruby_sdk/models/sent_webhook_request_body'
require 'carbon_ruby_sdk/models/service_now_authentication'
require 'carbon_ruby_sdk/models/service_now_authentication_source'
require 'carbon_ruby_sdk/models/service_now_credentials'
require 'carbon_ruby_sdk/models/service_now_credentials_nullable'
require 'carbon_ruby_sdk/models/service_now_file_types'
require 'carbon_ruby_sdk/models/shared_source_item_types'
require 'carbon_ruby_sdk/models/sharepoint_authentication'
require 'carbon_ruby_sdk/models/sharepoint_authentication_source'
require 'carbon_ruby_sdk/models/simple_o_auth_data_sources'
require 'carbon_ruby_sdk/models/single_chunks_and_embeddings_upload_input'
require 'carbon_ruby_sdk/models/sitemap_scrape_request'
require 'carbon_ruby_sdk/models/slack_filters'
require 'carbon_ruby_sdk/models/slack_sync_request'
require 'carbon_ruby_sdk/models/source'
require 'carbon_ruby_sdk/models/source_property'
require 'carbon_ruby_sdk/models/storage_file_formats'
require 'carbon_ruby_sdk/models/sync_directory_request'
require 'carbon_ruby_sdk/models/sync_files_ids'
require 'carbon_ruby_sdk/models/sync_files_request'
require 'carbon_ruby_sdk/models/sync_options'
require 'carbon_ruby_sdk/models/tags'
require 'carbon_ruby_sdk/models/tags1'
require 'carbon_ruby_sdk/models/task'
require 'carbon_ruby_sdk/models/team'
require 'carbon_ruby_sdk/models/text_embedding_generators'
require 'carbon_ruby_sdk/models/token_response'
require 'carbon_ruby_sdk/models/transcription_service'
require 'carbon_ruby_sdk/models/transcription_service_nullable'
require 'carbon_ruby_sdk/models/tree'
require 'carbon_ruby_sdk/models/update_organization_input'
require 'carbon_ruby_sdk/models/update_users_input'
require 'carbon_ruby_sdk/models/upload_file_from_url_input'
require 'carbon_ruby_sdk/models/user'
require 'carbon_ruby_sdk/models/user_configuration'
require 'carbon_ruby_sdk/models/user_configuration_nullable'
require 'carbon_ruby_sdk/models/user_file'
require 'carbon_ruby_sdk/models/user_files_v2'
require 'carbon_ruby_sdk/models/user_list_response'
require 'carbon_ruby_sdk/models/user_nullable'
require 'carbon_ruby_sdk/models/user_request_content'
require 'carbon_ruby_sdk/models/user_response'
require 'carbon_ruby_sdk/models/user_web_page_order_by_types'
require 'carbon_ruby_sdk/models/user_web_pages_filters'
require 'carbon_ruby_sdk/models/user_web_pages_request'
require 'carbon_ruby_sdk/models/validation_error'
require 'carbon_ruby_sdk/models/webhook'
require 'carbon_ruby_sdk/models/webhook_filters'
require 'carbon_ruby_sdk/models/webhook_no_key'
require 'carbon_ruby_sdk/models/webhook_order_by_columns'
require 'carbon_ruby_sdk/models/webhook_query_input'
require 'carbon_ruby_sdk/models/webhook_query_response'
require 'carbon_ruby_sdk/models/webhook_status'
require 'carbon_ruby_sdk/models/webscrape_request'
require 'carbon_ruby_sdk/models/white_label_create_request_inner'
require 'carbon_ruby_sdk/models/white_label_filters'
require 'carbon_ruby_sdk/models/white_label_input'
require 'carbon_ruby_sdk/models/white_label_input_data_source_type'
require 'carbon_ruby_sdk/models/white_label_order_by_columns'
require 'carbon_ruby_sdk/models/white_label_update_request'
require 'carbon_ruby_sdk/models/white_labeling_response'
require 'carbon_ruby_sdk/models/youtube_transcript_response'
require 'carbon_ruby_sdk/models/zendesk_authentication'
require 'carbon_ruby_sdk/models/zendesk_authentication_source'
require 'carbon_ruby_sdk/models/zendesk_file_types'
require 'carbon_ruby_sdk/models/zotero_authentication'
require 'carbon_ruby_sdk/models/zotero_authentication_source'

# APIs
require 'carbon_ruby_sdk/api/auth_api'
require 'carbon_ruby_sdk/api/crm_api'
require 'carbon_ruby_sdk/api/data_sources_api'
require 'carbon_ruby_sdk/api/embeddings_api'
require 'carbon_ruby_sdk/api/files_api'
require 'carbon_ruby_sdk/api/github_api'
require 'carbon_ruby_sdk/api/integrations_api'
require 'carbon_ruby_sdk/api/organizations_api'
require 'carbon_ruby_sdk/api/users_api'
require 'carbon_ruby_sdk/api/utilities_api'
require 'carbon_ruby_sdk/api/webhooks_api'
require 'carbon_ruby_sdk/api/white_label_api'

module Carbon
  @config = Configuration.default
  SENTINEL = Object.new
  class << self

    private def is_sentinel(value)
      value == SENTINEL
    end

    def host
      @config.host
    end

    def host=(value)
      @config.host = value
    end
    # api key from OpenAPI spec
    def access_token
      @config.access_token
    end

    def access_token=(value)
      @config.access_token = value
    end
    # api key from OpenAPI spec
    def api_key
      @config.api_key
    end

    def api_key=(value)
      @config.api_key = value
    end
    # api key from OpenAPI spec
    def customer_id
      @config.customer_id
    end

    def customer_id=(value)
      @config.customer_id = value
    end

    # Customize default settings for the SDK using block.
    #   Carbon.configure do |config|
    #     config.host = "http://example.com"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end

  class Client
    attr_reader :auth
    attr_reader :crm
    attr_reader :data_sources
    attr_reader :embeddings
    attr_reader :files
    attr_reader :github
    attr_reader :integrations
    attr_reader :organizations
    attr_reader :users
    attr_reader :utilities
    attr_reader :webhooks
    attr_reader :white_label

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @auth = Carbon::AuthApi.new(@api_client)
      @crm = Carbon::CRMApi.new(@api_client)
      @data_sources = Carbon::DataSourcesApi.new(@api_client)
      @embeddings = Carbon::EmbeddingsApi.new(@api_client)
      @files = Carbon::FilesApi.new(@api_client)
      @github = Carbon::GithubApi.new(@api_client)
      @integrations = Carbon::IntegrationsApi.new(@api_client)
      @organizations = Carbon::OrganizationsApi.new(@api_client)
      @users = Carbon::UsersApi.new(@api_client)
      @utilities = Carbon::UtilitiesApi.new(@api_client)
      @webhooks = Carbon::WebhooksApi.new(@api_client)
      @white_label = Carbon::WhiteLabelApi.new(@api_client)
    end
  end
end

# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from carbon.paths.integrations_items_sync_cancel.post import CancelRaw
from carbon.paths.integrations_connect.post import ConnectDataSourceRaw
from carbon.paths.integrations_freshdesk.post import ConnectFreshdeskRaw
from carbon.paths.integrations_gitbook.post import ConnectGitbookRaw
from carbon.paths.integrations_s3.post import CreateAwsIamUserRaw
from carbon.paths.integrations_oauth_url.post import GetOauthUrlRaw
from carbon.paths.integrations_confluence_list.post import ListConfluencePagesRaw
from carbon.paths.integrations_items_list.post import ListDataSourceItemsRaw
from carbon.paths.integrations_outlook_user_folders.get import ListFoldersRaw
from carbon.paths.integrations_gitbook_spaces.get import ListGitbookSpacesRaw
from carbon.paths.integrations_gmail_user_labels.get import ListLabelsRaw
from carbon.paths.integrations_outlook_user_categories.get import ListOutlookCategoriesRaw
from carbon.paths.integrations_github_repos.get import ListReposRaw
from carbon.paths.integrations_confluence_sync.post import SyncConfluenceRaw
from carbon.paths.integrations_items_sync.post import SyncDataSourceItemsRaw
from carbon.paths.integrations_files_sync.post import SyncFilesRaw
from carbon.paths.integrations_github.post import SyncGitHubRaw
from carbon.paths.integrations_gitbook_sync.post import SyncGitbookRaw
from carbon.paths.integrations_gmail_sync.post import SyncGmailRaw
from carbon.paths.integrations_outlook_sync.post import SyncOutlookRaw
from carbon.paths.integrations_github_sync_repos.post import SyncReposRaw
from carbon.paths.integrations_rss_feed.post import SyncRssFeedRaw
from carbon.paths.integrations_s3_files.post import SyncS3FilesRaw


class IntegrationsApiRaw(
    CancelRaw,
    ConnectDataSourceRaw,
    ConnectFreshdeskRaw,
    ConnectGitbookRaw,
    CreateAwsIamUserRaw,
    GetOauthUrlRaw,
    ListConfluencePagesRaw,
    ListDataSourceItemsRaw,
    ListFoldersRaw,
    ListGitbookSpacesRaw,
    ListLabelsRaw,
    ListOutlookCategoriesRaw,
    ListReposRaw,
    SyncConfluenceRaw,
    SyncDataSourceItemsRaw,
    SyncFilesRaw,
    SyncGitHubRaw,
    SyncGitbookRaw,
    SyncGmailRaw,
    SyncOutlookRaw,
    SyncReposRaw,
    SyncRssFeedRaw,
    SyncS3FilesRaw,
):
    """NOTE:
    This class is auto generated by Konfig (https://konfigthis.com)
    """
    pass

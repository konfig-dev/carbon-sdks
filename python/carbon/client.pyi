# coding: utf-8
"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

import typing
import inspect
from datetime import date, datetime
from carbon.client_custom import ClientCustom
from carbon.configuration import Configuration
from carbon.api_client import ApiClient
from carbon.type_util import copy_signature
from carbon.apis.tags.auth_api import AuthApi
from carbon.apis.tags.crm_api import CRMApi
from carbon.apis.tags.data_sources_api import DataSourcesApi
from carbon.apis.tags.embeddings_api import EmbeddingsApi
from carbon.apis.tags.files_api import FilesApi
from carbon.apis.tags.github_api import GithubApi
from carbon.apis.tags.integrations_api import IntegrationsApi
from carbon.apis.tags.organizations_api import OrganizationsApi
from carbon.apis.tags.users_api import UsersApi
from carbon.apis.tags.utilities_api import UtilitiesApi
from carbon.apis.tags.webhooks_api import WebhooksApi



class Carbon(ClientCustom):

    def __init__(self, configuration: typing.Union[Configuration, None] = None, **kwargs):
        super().__init__(configuration, **kwargs)
        if (len(kwargs) > 0):
            configuration = Configuration(**kwargs)
        if (configuration is None):
            raise Exception("configuration is required")
        api_client = ApiClient(configuration)
        self.auth: AuthApi = AuthApi(api_client)
        self.crm: CRMApi = CRMApi(api_client)
        self.data_sources: DataSourcesApi = DataSourcesApi(api_client)
        self.embeddings: EmbeddingsApi = EmbeddingsApi(api_client)
        self.files: FilesApi = FilesApi(api_client)
        self.github: GithubApi = GithubApi(api_client)
        self.integrations: IntegrationsApi = IntegrationsApi(api_client)
        self.organizations: OrganizationsApi = OrganizationsApi(api_client)
        self.users: UsersApi = UsersApi(api_client)
        self.utilities: UtilitiesApi = UtilitiesApi(api_client)
        self.webhooks: WebhooksApi = WebhooksApi(api_client)

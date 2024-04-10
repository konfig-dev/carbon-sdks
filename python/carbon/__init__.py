# coding: utf-8

# flake8: noqa

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

__version__ = "0.1.18"

# import ApiClient
from carbon.api_client import ApiClient

# import Configuration
from carbon.configuration import Configuration

# import exceptions
from carbon.exceptions import OpenApiException
from carbon.exceptions import ApiAttributeError
from carbon.exceptions import ApiTypeError
from carbon.exceptions import ApiValueError
from carbon.exceptions import ApiKeyError
from carbon.exceptions import ApiException

from carbon.client import Carbon

# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from carbon import schemas  # noqa: F401


class SimpleOAuthDataSources(
    schemas.EnumBase,
    schemas.StrSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """
    
    @schemas.classproperty
    def GOOGLE_DRIVE(cls):
        return cls("GOOGLE_DRIVE")
    
    @schemas.classproperty
    def INTERCOM(cls):
        return cls("INTERCOM")
    
    @schemas.classproperty
    def DROPBOX(cls):
        return cls("DROPBOX")
    
    @schemas.classproperty
    def ONEDRIVE(cls):
        return cls("ONEDRIVE")
    
    @schemas.classproperty
    def BOX(cls):
        return cls("BOX")
    
    @schemas.classproperty
    def GMAIL(cls):
        return cls("GMAIL")
    
    @schemas.classproperty
    def OUTLOOK(cls):
        return cls("OUTLOOK")
    
    @schemas.classproperty
    def SLACK(cls):
        return cls("SLACK")
    
    @schemas.classproperty
    def GOOGLE_CLOUD_STORAGE(cls):
        return cls("GOOGLE_CLOUD_STORAGE")

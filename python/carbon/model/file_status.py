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


class FileStatus(
    schemas.EnumBase,
    schemas.StrSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        enum_value_to_name = {
            "added": "ADDED",
            "removed": "REMOVED",
            "modified": "MODIFIED",
            "renamed": "RENAMED",
            "copied": "COPIED",
            "changed": "CHANGED",
            "unchanged": "UNCHANGED",
        }
    
    @schemas.classproperty
    def ADDED(cls):
        return cls("added")
    
    @schemas.classproperty
    def REMOVED(cls):
        return cls("removed")
    
    @schemas.classproperty
    def MODIFIED(cls):
        return cls("modified")
    
    @schemas.classproperty
    def RENAMED(cls):
        return cls("renamed")
    
    @schemas.classproperty
    def COPIED(cls):
        return cls("copied")
    
    @schemas.classproperty
    def CHANGED(cls):
        return cls("changed")
    
    @schemas.classproperty
    def UNCHANGED(cls):
        return cls("unchanged")

# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING

from carbon.type.pr_state_input import PRStateInput

class RequiredPullRequestFilters(TypedDict):
    pass

class OptionalPullRequestFilters(TypedDict, total=False):
    state: PRStateInput

    # Filter pulls by base branch name
    base: typing.Optional[str]

    # Filter pulls by head user or head organization and branch name in the format of user:ref-name or organization:ref-name
    head: typing.Optional[str]

class PullRequestFilters(RequiredPullRequestFilters, OptionalPullRequestFilters):
    pass

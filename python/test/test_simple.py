# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

import unittest

import os
from pprint import pprint
from carbon import Carbon


class TestSimple(unittest.TestCase):
    def setUp(self):
        pass

    def test_integer_arg(self):
        carbon = Carbon(
            api_key="YOUR_API_KEY",
            customer_id="YOUR_API_KEY",
            host="http://127.0.0.1:4010",
        )
        res = carbon.integrations.get_oauth_url(
            service="SHAREPOINT",
            data_source_id=int(17714),
            request_id="{request_id: 123}",
            skip_embedding_generation=True,
            microsoft_tenant="modelml",
            sharepoint_site_name="word-ingestion-dev",
            enable_file_picker=False,
        )
        self.assertIsNotNone(res)

    def test_auth_schemes(self):
        carbon = Carbon(
            api_key="YOUR_API_KEY",
            customer_id="YOUR_API_KEY",
            host="http://127.0.0.1:4010",
        )
        token = carbon.auth.get_access_token()
        self.assertIsNotNone(token)
        pprint(token)
        carbon = Carbon(access_token=token.access_token, host="http://127.0.0.1:4010")
        self.assertIsNotNone(carbon)
        white_labeling = carbon.auth.get_white_labeling()
        self.assertIsNotNone(white_labeling)
        pprint(white_labeling)

    def test_various_endpoints(self):
        carbon = Carbon(
            api_key="YOUR_API_KEY",
            customer_id="YOUR_API_KEY",
            host="http://127.0.0.1:4010",
        )
        data_sources = carbon.data_sources.query_user_data_sources(
            pagination={
                "limit": 10,
                "offset": 0,
            },
            order_by="created_at",
            order_dir="desc",
            filters={
                "source": "GOOGLE_DRIVE",
            },
        )
        pprint(data_sources)
        self.assertIsNotNone(data_sources)

        files = carbon.integrations.sync_s3_files(
            ids=[{"id": "ID", "bucket": "BUCKET"}]
        )
        pprint(files)
        self.assertIsNotNone(files)

        file = carbon.files.upload(
            file=open("README.md", "rb"), embedding_model="OPENAI"
        )
        pprint(file)
        self.assertIsNotNone(file)

    def test_datetime_deserialization(self):
        from datetime import datetime

        carbon = Carbon(
            api_key="YOUR_API_KEY",
            customer_id="YOUR_API_KEY",
            host="http://127.0.0.1:4010",
        )
        res = carbon.integrations.list_data_source_items(data_source_id=4)
        self.assertIsNotNone(res)
        self.assertTrue(len(res.items) > 0)
        self.assertTrue(type(res.items[0].updated_at) is datetime)

    def test_white_label_create(self):
        client = Carbon(
            api_key="YOUR_API_KEY",
            customer_id="YOUR_API_KEY",
            host="http://127.0.0.1:4010",
        )
        res = client.white_label.create(
            body=[
                {
                    "data_source_type": "SALESFORCE",
                    "credentials": {
                        "client_id": "CLIENT_ID",
                        "client_secret": "CLIENT_SECRET",
                        "redirect_uri": "https://carbon.test.app/integrations/SALESFORCE",
                    },
                }
            ],
        )
        self.assertIsNotNone(res)

    def tearDown(self):
        pass


if __name__ == "__main__":
    unittest.main()

echo '"""
Basic unit tests for the Finnhub API.
"""

import unittest
from src.data_ingestion.finnhub_api import FinnhubAPI

class TestFinnhubAPI(unittest.TestCase):
    def setUp(self):
        self.client = FinnhubAPI(api_key="demo")
        
    def test_client_initialization(self):
        """Test if the client is initialized correctly."""
        self.assertEqual(self.client.base_url, "https://finnhub.io/api/v1")
        self.assertEqual(self.client.api_key, "demo")
        
if __name__ == "__main__":
    unittest.main()' > tests/test_basic.py
```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      // Use the jsonData
    } else {
      // Handle error response with detailed message
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    // Handle exceptions (network errors, etc.)
    print('Error fetching data: $e');
    // Re-throw the exception to allow higher-level error handling if needed
    rethrow; 
  }
}
```
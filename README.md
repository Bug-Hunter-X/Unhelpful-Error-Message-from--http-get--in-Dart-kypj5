# Unhelpful Error Message from `http.get` in Dart

This repository demonstrates a common but frustrating issue with Dart's `http` package:  Inconsistent or unhelpful error messages when making HTTP requests.  Specifically, the focus is on cases where the API returns a non-200 status code, but the exception message lacks crucial information like the HTTP status code, making debugging difficult.

## Problem

When an API request fails (non-200 status code), Dart's `http.get` may throw an exception, but the exception message may not provide details about the failure. This makes identifying the root cause of the failure more challenging.

## Solution

The solution improves error handling by explicitly checking the response status code and providing more descriptive error messages.

**This is not an officially supported Google product**

This requires code generation from : dart run build_runner build

Steps to generate the SDK:

0. Ensure you're on dart version `^3.2.3`
1. Run `cd gem-community-edition`
2. Run `dart pub get`
3. Run `dart run build_runner build`

To run the code sample:

0. Generate the SDK as shown above
1. Insert a valid Gemini API key into `example/API_KEY`
2. Run `dart run example/gemini_community_edition_example.dart`

To run the image analyzer sampple:

0. Generate the SDK as shown above
1. Insert a valid Gemini API key into `example/API_KEY`
2. Run `dart run example/analyze_image.dart "What is in this picture?" example/xmas_tree.jpeg "Is it real?" "Is it good?"`

You can post multiple string prompts and files to the invocation and it will just pass them to Gemini, and print the results.


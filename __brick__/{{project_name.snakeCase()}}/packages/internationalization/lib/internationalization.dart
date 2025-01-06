///* - - - The prompt for the LLM to automatically generate the internationalization file *///
///
/// Usage:
// Uncomment these lines and paste it to ther prompt input
//
//
// You are the Dart language programmer assistant. You are performing internationalization tasks with  l10n in Flutter. This is an example of how we use each word in .arb file ```"counterAppBarTitle": "Counter",
//       "@counterAppBarTitle": {
//       "description": "Example of a text that is used as a title in the app bar"
//     },
// ``` in this example ```counterAppBarTitle``` is the key word and ```Counter``` is the text displayed for the user in eglish. this is an example of how .arb file for English would look like ```{
//     "@@locale": "en",

//     "counterAppBarTitle": "Counter",
//       "@counterAppBarTitle": {
//       "description": "Example of a text that is used as a title in the app bar"
//     },

//     "withPlaceholder": "This is your {yourPlaceholder}",
//     "@withPlaceholder": {
//       "description": "Example of a text with a placeholder",
//       "placeholders": {
//         "yourPlaceholder": {}
//         }
//       }

//   }
//   ```. I will send you a list of strings separated with commas in English and you will out put me ready and fully featured .arb files in Russian and English languages
///* - - - * ///

export './src/translations.dart';
export 'package:intl/intl.dart';

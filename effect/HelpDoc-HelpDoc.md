# HelpDoc

A `HelpDoc` models the full documentation for a command-line application.

`HelpDoc` is composed of optional header and footers, and in-between, a
list of HelpDoc-level content items.

HelpDoc-level content items, in turn, can be headers, paragraphs, description
lists, and enumerations.

A `HelpDoc` can be converted into plaintext, JSON, and HTML.

To import and use `HelpDoc` from the "HelpDoc" module:

```ts
import * as HelpDoc from "@effect/cli/HelpDoc"
// Can be accessed like this
HelpDoc.HelpDoc
```

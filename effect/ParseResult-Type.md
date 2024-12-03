# Type

The `Type` variant of the `ParseIssue` type represents an error that occurs when the `actual` value is not of the expected type.
The `ast` field specifies the expected type, and the `actual` field contains the value that caused the error.

To import and use `Type` from the "ParseResult" module:

```ts
import * as ParseResult from "effect/ParseResult"
// Can be accessed like this
ParseResult.Type
```

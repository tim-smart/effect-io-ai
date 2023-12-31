# Type

The `Type` variant of the `ParseIssue` type represents an error that occurs when the `actual` value is not of the expected type.
The `expected` field specifies the expected type, and the `actual` field contains the value that caused the error.
This error can occur when trying to decode a value using a schema that is only able to decode values of a specific type,
and the actual value is not of that type. For example, if you are using a schema to decode a string value and the actual value
is a number, a `Type` decode error would be returned.

To import and use `Type` from the "ParseResult" module:

```ts
import * as ParseResult from "@effect/schema/ParseResult"
// Can be accessed like this
ParseResult.Type
```

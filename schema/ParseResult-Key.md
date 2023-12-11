# Key

The `Key` variant of the `ParseIssue` type represents an error that occurs when a key in an object is invalid.
This error typically occurs when the `actual` value is not a valid key type (e.g. a string or number)
or when the key is not present in the object being decoded. In either case, the `key` field of the error will contain
the invalid key value. This error is typically used in combination with the `Unexpected` error,
which indicates that an unexpected key was found in the object being decoded.

To import and use `Key` from the "ParseResult" module:

```ts
import * as ParseResult from "@effect/schema/ParseResult"
// Can be accessed like this
ParseResult.Key
```

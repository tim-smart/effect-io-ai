# Forbidden

The `Forbidden` variant of the `ParseIssue` type represents a forbidden operation, such as when encountering an Effect that is not allowed to execute (e.g., using `runSync`).

To import and use `Forbidden` from the "ParseResult" module:

```ts
import * as ParseResult from "effect/ParseResult"
// Can be accessed like this
ParseResult.Forbidden
```

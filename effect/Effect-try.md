# try

Creates an `Effect` that represents a synchronous computation that might fail.

If the function (`thunk`) throws an error, it is caught and the effect fails with an `UnknownException`.

**Overload with custom error handling:**

Creates an `Effect` that represents a synchronous computation that might fail, with custom error mapping.

If the `try` function throws an error, the `catch` function maps it to an error of type `E`.

To import and use `try` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.try
```

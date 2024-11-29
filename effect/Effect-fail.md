# fail

Creates an `Effect` that represents a recoverable error.

**When to Use**

Use this function to explicitly signal an error in an `Effect`. The error
will keep propagating unless it is handled. You can handle the error with
functions like {@link catchAll} or {@link catchTag}.

To import and use `fail` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.fail
undefined

**Example**

```ts
// Title: Creating a Failed Effect
import { Effect } from "effect"

//      ┌─── Effect<never, Error, never>
//      ▼
const failure = Effect.fail(new Error("Operation failed due to network error"))
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Effect<never, E>
```

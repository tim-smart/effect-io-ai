# fail

Creates an `Effect` that represents a recoverable error.

This `Effect` does not succeed but instead fails with the provided error. The
failure can be of any type, and will propagate through the effect pipeline
unless handled.

Use this function when you want to explicitly signal an error in an `Effect`
computation. The failed effect can later be handled with functions like
{@link catchAll} or {@link catchTag}.

To import and use `fail` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fail
```

**Example**

```ts
import { Effect } from "effect"

// Example of creating a failed effect
const failedEffect = Effect.fail("Something went wrong")

// Handle the failure
failedEffect
  .pipe(
    Effect.catchAll((error) => Effect.succeed(`Recovered from: ${error}`)),
    Effect.runPromise
  )
  .then(console.log)
// Output: "Recovered from: Something went wrong"
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Effect<never, E>
```

# runPromise

Executes an effect and returns a `Promise` that resolves with the result.

Use `runPromise` when working with asynchronous effects and you need to integrate with code that uses Promises.
If the effect fails, the returned Promise will be rejected with the error.

To import and use `runPromise` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runPromise
```

**Example**

```ts
import { Effect } from "effect"

// Execute an effect and handle the result with a Promise
Effect.runPromise(Effect.succeed(1)).then(console.log) // Output: 1

// Execute a failing effect and handle the rejection
Effect.runPromise(Effect.fail("my error")).catch((error) => {
  console.error("Effect failed with error:", error)
})
```

**Signature**

```ts
export declare const runPromise: <A, E>(
  effect: Effect<A, E, never>,
  options?: { readonly signal?: AbortSignal } | undefined
) => Promise<A>
```

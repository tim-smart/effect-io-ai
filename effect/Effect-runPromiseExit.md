# runPromiseExit

Executes an effect and returns a `Promise` that resolves with an `Exit` describing the result.

Use `runPromiseExit` when you need detailed information about the outcome of the effect, including success or failure,
and you want to work with Promises.

To import and use `runPromiseExit` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runPromiseExit
```

**Example**

```ts
import { Effect } from "effect"

// Execute a successful effect and get the Exit result as a Promise
Effect.runPromiseExit(Effect.succeed(1)).then(console.log)
// Output:
// {
//   _id: "Exit",
//   _tag: "Success",
//   value: 1
// }

// Execute a failing effect and get the Exit result as a Promise
Effect.runPromiseExit(Effect.fail("my error")).then(console.log)
// Output:
// {
//   _id: "Exit",
//   _tag: "Failure",
//   cause: {
//     _id: "Cause",
//     _tag: "Fail",
//     failure: "my error"
//   }
// }
```

**Signature**

```ts
export declare const runPromiseExit: <A, E>(
  effect: Effect<A, E, never>,
  options?: { readonly signal?: AbortSignal } | undefined
) => Promise<Exit.Exit<A, E>>
```

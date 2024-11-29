# runPromiseExit

Runs an effect and returns a `Promise` that resolves to an `Exit`, which
represents the outcome (success or failure) of the effect.

**When to Use**

Use `runPromiseExit` when you need to determine if an effect succeeded
or failed, including any defects, and you want to work with a `Promise`.

**Details**

The `Exit` type represents the result of the effect:

- If the effect succeeds, the result is wrapped in a `Success`.
- If it fails, the failure information is provided as a `Failure` containing
  a `Cause` type.

To import and use `runPromiseExit` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.runPromiseExit
undefined

**Example**

```ts
// Title: Handling Results as Exit
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

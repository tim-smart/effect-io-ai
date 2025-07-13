Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromiseExit

Runs an effect and returns a `Promise` that resolves to an `Exit`,
representing the outcome.

**Details**

This function executes an effect and resolves to an `Exit` object. The `Exit`
type provides detailed information about the result of the effect:
- If the effect succeeds, the `Exit` will be of type `Success` and include
  the value produced by the effect.
- If the effect fails, the `Exit` will be of type `Failure` and contain a
  `Cause` object, detailing the failure.

Using this function allows you to examine both successful results and failure
cases in a unified way, while still leveraging `Promise` for handling the
asynchronous behavior of the effect.

**When to Use**

Use this function when you need to understand the outcome of an effect,
whether it succeeded or failed, and want to work with this result using
`Promise` syntax. This is particularly useful when integrating with systems
that rely on promises but need more detailed error handling than a simple
rejection.

**Example** (Handling Results as Exit)

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
declare const runPromiseExit: <A, E>(effect: Effect<A, E, never>, options?: { readonly signal?: AbortSignal; } | undefined) => Promise<Exit.Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12165)

Since v2.0.0
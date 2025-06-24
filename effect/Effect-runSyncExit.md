Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSyncExit

Runs an effect synchronously and returns the result as an `Exit` type.

**Details**

This function executes the provided effect synchronously and returns an `Exit`
type that encapsulates the outcome of the effect:
- If the effect succeeds, the result is wrapped in a `Success`.
- If the effect fails, it returns a `Failure` containing a `Cause` that explains
  the failure.

If the effect involves asynchronous operations, this function will return a `Failure`
with a `Die` cause, indicating that it cannot resolve the effect synchronously.
This makes the function suitable for use only with effects that are synchronous
in nature.

**When to Use**

Use this function when:
- You want to handle both success and failure outcomes in a structured way using the `Exit` type.
- You are working with effects that are purely synchronous and do not involve asynchronous operations.
- You need to debug or inspect failures, including their causes, in a detailed manner.

Avoid using this function for effects that involve asynchronous operations, as it will fail with a `Die` cause.

**Example** (Handling Results as Exit)

```ts
import { Effect } from "effect"

console.log(Effect.runSyncExit(Effect.succeed(1)))
// Output:
// {
//   _id: "Exit",
//   _tag: "Success",
//   value: 1
// }

console.log(Effect.runSyncExit(Effect.fail("my error")))
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

**Example** (Asynchronous Operation Resulting in Die)

```ts
import { Effect } from "effect"

console.log(Effect.runSyncExit(Effect.promise(() => Promise.resolve(1))))
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Die',
//     defect: [Fiber #0 cannot be resolved synchronously. This is caused by using runSync on an effect that performs async work] {
//       fiber: [FiberRuntime],
//       _tag: 'AsyncFiberException',
//       name: 'AsyncFiberException'
//     }
//   }
// }
```

**Signature**

```ts
declare const runSyncExit: <A, E>(effect: Effect<A, E>) => Exit.Exit<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12332)

Since v2.0.0
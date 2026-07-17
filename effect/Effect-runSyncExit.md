Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSyncExit

Runs an effect synchronously and captures the outcome safely as an `Exit` type, which
represents the outcome (success or failure) of the effect.

**When to use**

Use to find out whether an effect succeeded or failed,
including any defects, without dealing with asynchronous operations.

**Details**

The `Exit` type represents the result of the effect. Successful effects are
wrapped in `Success`, and failed effects are wrapped in `Failure` with a
`Cause`.

If the effect contains asynchronous operations, `runSyncExit` will
return an `Failure` with a `Die` cause, indicating that the effect cannot be
resolved synchronously.

**Example** (Observing synchronous results as Exit)

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

**Example** (Capturing async work as a Die cause)

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

**See**

- `runSync` for a version that throws on failure.

**Signature**

```ts
declare const runSyncExit: <A, E>(effect: Effect<A, E>) => Exit.Exit<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9332)

Since v2.0.0
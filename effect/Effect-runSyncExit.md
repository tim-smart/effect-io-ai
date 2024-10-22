# runSyncExit

Executes an effect synchronously and returns an `Exit` describing the result.

Use `runSyncExit` when you need detailed information about the outcome of the effect,
including whether it succeeded or failed, without throwing exceptions.

To import and use `runSyncExit` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runSyncExit
```

**Example**

```ts
import { Effect } from "effect"

// Execute a successful effect and get the Exit result
const result1 = Effect.runSyncExit(Effect.succeed(1))
console.log(result1)
// Output:
// {
//   _id: "Exit",
//   _tag: "Success",
//   value: 1
// }

// Execute a failing effect and get the Exit result
const result2 = Effect.runSyncExit(Effect.fail("my error"))
console.log(result2)
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
export declare const runSyncExit: <A, E>(effect: Effect<A, E>) => Exit.Exit<A, E>
```

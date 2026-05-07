Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSync

Executes an effect synchronously, running it immediately and returning the
result.

**When to Use**

Use `runSync` to run an effect that does not fail and does not include
any asynchronous operations.

If the effect fails or involves asynchronous work, it will throw an error,
and execution will stop where the failure or async operation occurs.

**Example**

```ts
// Title: Synchronous Logging
import { Effect } from "effect"

const program = Effect.sync(() => {
  console.log("Hello, World!")
  return 1
})

const result = Effect.runSync(program)
// Output: Hello, World!

console.log(result)
// Output: 1
```

**Example**

```ts
// Title: Incorrect Usage with Failing or Async Effects
import { Effect } from "effect"

try {
  // Attempt to run an effect that fails
  Effect.runSync(Effect.fail("my error"))
} catch (e) {
  console.error(e)
}
// Output:
// (FiberFailure) Error: my error

try {
  // Attempt to run an effect that involves async work
  Effect.runSync(Effect.promise(() => Promise.resolve(1)))
} catch (e) {
  console.error(e)
}
// Output:
// (FiberFailure) AsyncFiberException: Fiber #0 cannot be resolved synchronously. This is caused by using runSync on an effect that performs async work
```

**See**

- `runSyncExit` for a version that returns an `Exit` type instead of
throwing an error.

**Signature**

```ts
declare const runSync: <A, E>(effect: Effect<A, E>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8750)

Since v2.0.0
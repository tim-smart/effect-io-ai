Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSync

Executes an effect synchronously, running it immediately and returning the
result.

**Details**

This function evaluates the provided effect synchronously, returning its
result directly. It is ideal for effects that do not fail or include
asynchronous operations. If the effect does fail or involves async tasks, it
will throw an error. Execution stops at the point of failure or asynchronous
operation, making it unsuitable for effects that require asynchronous
handling.

**Important**: Attempting to run effects that involve asynchronous operations
or failures will result in exceptions being thrown, so use this function with
care for purely synchronous and error-free effects.

**When to Use**

Use this function when:
- You are sure that the effect will not fail or involve asynchronous
  operations.
- You need a direct, synchronous result from the effect.
- You are working within a context where asynchronous effects are not
  allowed.

Avoid using this function for effects that can fail or require asynchronous
handling. For such cases, consider using `runPromise` or
`runSyncExit`.

**Example** (Synchronous Logging)

```ts
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

**Example** (Incorrect Usage with Failing or Async Effects)

```ts
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12251)

Since v2.0.0
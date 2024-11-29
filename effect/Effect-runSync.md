# runSync

Executes an effect synchronously, running it immediately and returning the
result.

**When to Use**

Use `runSync` to run an effect that does not fail and does not include
any asynchronous operations.

If the effect fails or involves asynchronous work, it will throw an error,
and execution will stop where the failure or async operation occurs.

To import and use `runSync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runSync
```

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

**Signature**

```ts
export declare const runSync: <A, E>(effect: Effect<A, E>) => A
```

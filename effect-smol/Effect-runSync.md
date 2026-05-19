Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSync

Executes an effect synchronously and returns its success value.

**When to Use**

Use `runSync` only for effects that can complete synchronously.

**Details**

If the effect fails, dies, is interrupted, or performs asynchronous work,
`runSync` throws a `FiberFailure` instead of returning a value. Use
`runSyncExit` when you want the failure captured as an `Exit`.

**See**

- `runSyncExit` for a version that returns an `Exit` type instead of
throwing an error.

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

**Signature**

```ts
declare const runSync: <A, E>(effect: Effect<A, E>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8494)

Since v2.0.0
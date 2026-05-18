Package: `effect`<br />
Module: `Effect`<br />

## Effect.sandbox

Exposes an effect's full failure cause in the error channel as `Cause<E>`.

**Details**

Use `sandbox` when downstream error handling needs to distinguish typed
failures, defects, and interruptions. Use `unsandbox` to restore the original
typed error channel after cause-level handling.

**Example** (Usage)

```ts
import { Cause, Effect } from "effect"

const task = Effect.fail("Something went wrong")

// Sandbox exposes the full cause as the error type
const program = Effect.gen(function*() {
  const result = yield* Effect.flip(Effect.sandbox(task))
  return `Caught cause: ${Cause.squash(result)}`
})

Effect.runPromise(program).then(console.log)
// Output: "Caught cause: Something went wrong"
```

**See**

- `unsandbox` to restore the original error handling.

**Signature**

```ts
declare const sandbox: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Cause.Cause<E>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3905)

Since v2.0.0
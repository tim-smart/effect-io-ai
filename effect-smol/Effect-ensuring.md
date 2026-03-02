Package: `effect`<br />
Module: `Effect`<br />

## Effect.ensuring

Returns an effect that, if this effect _starts_ execution, then the
specified `finalizer` is guaranteed to be executed, whether this effect
succeeds, fails, or is interrupted.

For use cases that need access to the effect's result, see `onExit`.

Finalizers offer very powerful guarantees, but they are low-level, and
should generally not be used for releasing resources. For higher-level
logic built on `ensuring`, see the `acquireRelease` family of methods.

**Example**

```ts
import { Console, Effect } from "effect"

const task = Effect.gen(function*() {
  yield* Console.log("Task started")
  yield* Effect.sleep("1 second")
  yield* Console.log("Task completed")
  return 42
})

// Ensure cleanup always runs, regardless of success or failure
const program = Effect.ensuring(
  task,
  Console.log("Cleanup: This always runs!")
)

Effect.runPromise(program).then(console.log)
// Output:
// Task started
// Task completed
// Cleanup: This always runs!
// 42
```

**Signature**

```ts
declare const ensuring: { <X, R1>(finalizer: Effect<X, never, R1>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R1 | R>; <A, E, R, X, R1>(self: Effect<A, E, R>, finalizer: Effect<X, never, R1>): Effect<A, E, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6343)

Since v2.0.0
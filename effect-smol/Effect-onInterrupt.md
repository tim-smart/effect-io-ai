Package: `effect`<br />
Module: `Effect`<br />

## Effect.onInterrupt

Runs the specified finalizer effect if this effect is interrupted.

**Example**

```ts
import { Console, Effect, Fiber } from "effect"

const task = Effect.forever(Effect.succeed("working..."))

const program = Effect.onInterrupt(
  task,
  () => Console.log("Task was interrupted, cleaning up...")
)

const fiber = Effect.runFork(program)
// Later interrupt the task
Effect.runFork(Fiber.interrupt(fiber))
// Output: Task was interrupted, cleaning up...
```

**Signature**

```ts
declare const onInterrupt: { <XE, XR>(finalizer: (interruptors: ReadonlySet<number>) => Effect<void, XE, XR>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Effect<A, E, R>, finalizer: (interruptors: ReadonlySet<number>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6925)

Since v2.0.0
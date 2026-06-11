Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interruptAs

Interrupts a fiber with a specific fiber ID as the interruptor. This allows
tracking which fiber initiated the interruption.

**When to use**

Use when runtime diagnostics or tracing should attribute the interruption to
a specific fiber ID.

**Details**

The returned Effect completes only after the interrupted fiber has completed.

**Gotchas**

The supplied ID affects the recorded interruptor. It does not make
interruption synchronous or force uninterruptible regions to stop early.

**Example** (Interrupting a fiber as another fiber)

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const targetFiber = yield* Effect.forkChild(
    Effect.delay("5 seconds")(Effect.succeed("task completed"))
  )

  // Interrupt the fiber, specifying fiber ID 123 as the interruptor
  yield* Fiber.interruptAs(targetFiber, 123)
  console.log("Fiber interrupted by fiber #123")
})
```

**See**

- `interrupt` for using the current fiber as the interruptor

**Signature**

```ts
declare const interruptAs: { (fiberId: number | undefined, annotations?: Context.Context<never> | undefined): <A, E>(self: Fiber<A, E>) => Effect<void>; <A, E>(self: Fiber<A, E>, fiberId: number | undefined, annotations?: Context.Context<never> | undefined): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L387)

Since v2.0.0
Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interruptAs

Interrupts a fiber with a specific fiber ID as the interruptor. This allows
tracking which fiber initiated the interruption.

**Example**

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

**Signature**

```ts
declare const interruptAs: { (fiberId: number | undefined, annotations?: ServiceMap.ServiceMap<never> | undefined): <A, E>(self: Fiber<A, E>) => Effect<void>; <A, E>(self: Fiber<A, E>, fiberId: number | undefined, annotations?: ServiceMap.ServiceMap<never> | undefined): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L319)

Since v2.0.0
Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interruptAllAs

Interrupts all fibers in the provided iterable using the specified fiber ID as the
interrupting fiber. This allows you to control which fiber is considered the source
of the interruption, which can be useful for debugging and tracing.

**Example**

```ts
import { Console, Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  // Create a controlling fiber
  const controllerFiber = yield* Effect.forkChild(Effect.succeed("controller"))

  // Create multiple worker fibers
  const worker1 = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("5 seconds")
      yield* Console.log("Worker 1 completed")
      return "worker1"
    })
  )

  const worker2 = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("3 seconds")
      yield* Console.log("Worker 2 completed")
      return "worker2"
    })
  )

  // Interrupt all workers using the controller fiber's ID
  yield* Effect.sleep("1 second")
  yield* Console.log("Interrupting workers from controller...")
  yield* Fiber.interruptAllAs([worker1, worker2], controllerFiber.id)
  yield* Console.log("All workers interrupted by controller")
})
```

**Signature**

```ts
declare const interruptAllAs: { (fiberId: number): <A extends Iterable<Fiber<any, any>>>(fibers: A) => Effect<void>; <A extends Iterable<Fiber<any, any>>>(fibers: A, fiberId: number): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L421)

Since v2.0.0
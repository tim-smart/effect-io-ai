Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interruptAll

Interrupts all fibers in the provided iterable, causing them to stop executing
and clean up any acquired resources.

**When to use**

Use when you need to cancel several forked fibers and wait for their cleanup
to complete.

**Details**

The current fiber is recorded as the interruptor. The returned Effect
completes only after all interrupted fibers have completed.

**Gotchas**

Interruption is cooperative for each fiber. The returned Effect can wait for
uninterruptible work and finalizers in any interrupted fiber.

**Example** (Interrupting multiple fibers)

```ts
import { Console, Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  // Create multiple long-running fibers
  const fiber1 = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("5 seconds")
      yield* Console.log("Task 1 completed")
      return "result1"
    })
  )

  const fiber2 = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("3 seconds")
      yield* Console.log("Task 2 completed")
      return "result2"
    })
  )

  const fiber3 = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("4 seconds")
      yield* Console.log("Task 3 completed")
      return "result3"
    })
  )

  // Wait a bit, then interrupt all fibers
  yield* Effect.sleep("1 second")
  yield* Console.log("Interrupting all fibers...")
  yield* Fiber.interruptAll([fiber1, fiber2, fiber3])
  yield* Console.log("All fibers have been interrupted")
})
```

**See**

- `interruptAllAs` for specifying the interrupting fiber ID

**Signature**

```ts
declare const interruptAll: <A extends Iterable<Fiber<any, any>>>(fibers: A) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L462)

Since v2.0.0
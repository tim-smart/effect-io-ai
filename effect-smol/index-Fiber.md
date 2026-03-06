Package: `effect`<br />
Module: `index`<br />

## index.Fiber

Re-exports all named exports from the "./Fiber.ts" module as `Fiber`.

**Example**

```ts
import { Console, Effect, Fiber } from "effect"

// Basic fiber operations
const basicExample = Effect.gen(function*() {
  // Fork an effect to run concurrently
  const fiber = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* Effect.sleep("2 seconds")
      yield* Console.log("Background task completed")
      return "background result"
    })
  )

  // Do other work while the fiber runs
  yield* Console.log("Doing other work...")
  yield* Effect.sleep("1 second")

  // Wait for the fiber to complete
  const result = yield* Fiber.join(fiber)
  yield* Console.log(`Fiber result: ${result}`)
})

// Joining multiple fibers
const joinExample = Effect.gen(function*() {
  const task1 = Effect.delay(Effect.succeed("task1"), "1 second")
  const task2 = Effect.delay(Effect.succeed("task2"), "2 seconds")

  // Start both effects as fibers
  const fiber1 = yield* Effect.forkChild(task1)
  const fiber2 = yield* Effect.forkChild(task2)

  // Wait for both to complete
  const result1 = yield* Fiber.join(fiber1)
  const result2 = yield* Fiber.join(fiber2)
  return [result1, result2] // ["task1", "task2"]
})

// Parallel execution with structured concurrency
const parallelExample = Effect.gen(function*() {
  const tasks = [1, 2, 3, 4, 5].map((n) =>
    Effect.gen(function*() {
      yield* Effect.sleep(`${n * 100} millis`)
      return n * n
    })
  )

  // Run all tasks in parallel, wait for all to complete
  const results = yield* Effect.all(tasks, { concurrency: "unbounded" })
  return results // [1, 4, 9, 16, 25]
})
```

**Signature**

```ts
export * as Fiber from "./Fiber.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L1315)

Since v2.0.0
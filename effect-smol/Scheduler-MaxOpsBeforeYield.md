Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.MaxOpsBeforeYield

A service reference that controls the maximum number of operations a fiber
can perform before yielding control back to the scheduler. This helps
prevent long-running fibers from monopolizing the execution thread.

The default value is 2048 operations, which provides a good balance between
performance and fairness in concurrent execution.

**Example**

```ts
import { Effect } from "effect"
import { MaxOpsBeforeYield } from "effect/Scheduler"

// Configure a fiber to yield more frequently
const program = Effect.gen(function*() {
  // Get current max ops setting (default is 2048)
  const currentMax = yield* MaxOpsBeforeYield
  yield* Effect.log(`Default max ops before yield: ${currentMax}`)

  // Run with reduced max ops for more frequent yielding
  return yield* Effect.provideService(
    Effect.gen(function*() {
      const maxOps = yield* MaxOpsBeforeYield
      yield* Effect.log(`Max ops before yield: ${maxOps}`)

      // Run a compute-intensive task that will yield frequently
      let result = 0
      for (let i = 0; i < 10000; i++) {
        result += i
        // This will cause yielding every 100 operations
        yield* Effect.sync(() => result)
      }
      return result
    }),
    MaxOpsBeforeYield,
    100
  )
})

// Configure for high-performance scenarios
const highPerformanceProgram = Effect.gen(function*() {
  // Run with increased max ops for better performance (less yielding)
  return yield* Effect.provideService(
    Effect.gen(function*() {
      const maxOps = yield* MaxOpsBeforeYield
      yield* Effect.log(`High-performance max ops: ${maxOps}`)

      // Run multiple concurrent tasks
      const tasks = Array.from(
        { length: 100 },
        (_, i) =>
          Effect.gen(function*() {
            yield* Effect.sleep(`${i * 10} millis`)
            return `Task ${i} completed`
          })
      )

      return yield* Effect.all(tasks, { concurrency: "unbounded" })
    }),
    MaxOpsBeforeYield,
    10000
  )
})

// Configure for fair scheduling
const fairSchedulingProgram = Effect.gen(function*() {
  // Run with lower max ops for more frequent yielding
  return yield* Effect.provideService(
    Effect.gen(function*() {
      const maxOps = yield* MaxOpsBeforeYield
      yield* Effect.log(`Fair scheduling max ops: ${maxOps}`)

      const longRunningTask = Effect.gen(function*() {
        for (let i = 0; i < 1000; i++) {
          yield* Effect.sync(() => Math.random())
        }
        return "Long task completed"
      })

      const quickTask = Effect.gen(function*() {
        yield* Effect.sleep("10 millis")
        return "Quick task completed"
      })

      // Both tasks will execute fairly due to frequent yielding
      return yield* Effect.all([longRunningTask, quickTask], {
        concurrency: "unbounded"
      })
    }),
    MaxOpsBeforeYield,
    50
  )
})
```

**Signature**

```ts
declare const MaxOpsBeforeYield: ServiceMap.Reference<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L280)

Since v4.0.0
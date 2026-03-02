Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.reduce

Returns a new `Schedule` that combines the outputs of the provided schedule
using the specified effectful `combine` function and starting from the
specified `initial` state.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Sum up execution counts from a counter schedule
const sumSchedule = Schedule.reduce(
  Schedule.recurs(5),
  () => 0, // Initial sum
  (sum, count) => Effect.succeed(sum + count) // Add each count to the sum
)

const sumProgram = Effect.gen(function*() {
  const finalSum = yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task"
    }),
    sumSchedule.pipe(
      Schedule.tapOutput((sum) => Console.log(`Running sum: ${sum}`))
    )
  )

  yield* Console.log(`Final sum: ${finalSum}`)
})

// Build a history of execution times
const historySchedule = Schedule.reduce(
  Schedule.spaced("1 second").pipe(Schedule.take(4)),
  () => [] as Array<number>, // Initial empty array
  (history, executionNumber) => Effect.succeed([...history, Date.now()])
)

const historyProgram = Effect.gen(function*() {
  const timeline = yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Recording timestamp...")
      return "recorded"
    }),
    historySchedule
  )

  yield* Console.log(
    `Execution timeline: ${timeline.length} timestamps recorded`
  )
})

// Accumulate metrics with effectful combination
const metricsAccumulator = Schedule.reduce(
  Schedule.recurs(6),
  () => ({ total: 0, count: 0, max: 0 }),
  (metrics, executionCount) => Effect.succeed({
    total: metrics.total + executionCount + 1,
    count: metrics.count + 1,
    max: Math.max(metrics.max, executionCount + 1)
  })
)

const metricsProgram = Effect.gen(function*() {
  const finalMetrics = yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Processing...")
      return "processed"
    }),
    metricsAccumulator
  )

  const average = finalMetrics.total / finalMetrics.count
  yield* Console.log(`Final metrics: ${finalMetrics.count} executions`)
  yield* Console.log(
    `Average delay: ${average.toFixed(1)}ms, Max delay: ${finalMetrics.max}ms`
  )
})

// Build configuration state over time
const configBuilder = Schedule.reduce(
  Schedule.fixed("500 millis").pipe(Schedule.take(3)),
  () => ({ retries: 1, timeout: 1000, backoff: 100 }),
  (config, executionNumber) => Effect.succeed({
    retries: config.retries + 1,
    timeout: config.timeout * 1.5,
    backoff: Math.min(config.backoff * 2, 5000)
  })
)

const configProgram = Effect.gen(function*() {
  const finalConfig = yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Updating configuration...")
      return "updated"
    }),
    configBuilder.pipe(
      Schedule.tapOutput((config) =>
        Console.log(
          `Config: retries=${config.retries}, timeout=${config.timeout}ms`
        )
      )
    )
  )

  yield* Console.log(`Final config: ${JSON.stringify(finalConfig)}`)
})
```

**Signature**

```ts
declare const reduce: { <State, Output, Error2 = never, Env2 = never>(initial: LazyArg<State>, combine: (state: State, output: Output) => State | Effect<State, Error2, Env2>): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<State, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, State, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, initial: LazyArg<State>, combine: (state: State, output: Output) => State | Effect<State, Error2, Env2>): Schedule<State, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2565)

Since v2.0.0
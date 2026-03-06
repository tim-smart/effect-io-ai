Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectWhile

Returns a new `Schedule` that recurs as long as the specified `predicate`
returns `true`, collecting all outputs of the schedule into an array.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Collect outputs while under time limit
const collectForTime = Schedule.collectWhile(
  Schedule.spaced("500 millis"),
  (metadata) => Effect.succeed(metadata.elapsed < 3000) // Stop after 3 seconds
)

const timeBasedProgram = Effect.gen(function*() {
  const results = yield* Effect.repeat(
    Effect.gen(function*() {
      const value = Math.floor(Math.random() * 100)
      yield* Console.log(`Generated value: ${value}`)
      return value
    }),
    collectForTime
  )

  yield* Console.log(
    `Collected ${results.length} values: [${results.join(", ")}]`
  )
})

// Collect outputs while condition is met
const collectWhileSmall = Schedule.collectWhile(
  Schedule.exponential("100 millis"),
  (metadata) =>
    Effect.succeed(metadata.attempt <= 5 && metadata.elapsed < 2000)
)

const conditionalProgram = Effect.gen(function*() {
  let attempt = 0

  const delays = yield* Effect.repeat(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Retry attempt ${attempt}`)
      return `${Date.now()}`
    }),
    collectWhileSmall
  )

  yield* Console.log(`Collected attempts: [${delays.join(", ")}]`)
})

// Collect with effectful predicate
const collectWithCheck = Schedule.collectWhile(
  Schedule.fixed("1 second"),
  (metadata) =>
    Effect.gen(function*() {
      const shouldContinue = metadata.attempt < 5
      yield* Console.log(
        `Check ${metadata.attempt}: continue = ${shouldContinue}`
      )
      return shouldContinue
    })
)

const effectfulProgram = Effect.gen(function*() {
  const timestamps = yield* Effect.repeat(
    Effect.gen(function*() {
      const now = new Date().toISOString()
      yield* Console.log(`Task at ${now}`)
      return now
    }),
    collectWithCheck
  )

  yield* Console.log(`Final collection: ${timestamps.length} items`)
})

// Collect samples with condition
const collectSamples = Schedule.collectWhile(
  Schedule.spaced("200 millis"),
  (metadata) =>
    Effect.succeed(metadata.attempt <= 5 && metadata.elapsed < 2000)
)

const samplingProgram = Effect.gen(function*() {
  const samples = yield* Effect.repeat(
    Effect.gen(function*() {
      const sample = Math.random() * 100
      yield* Console.log(`Sample: ${sample.toFixed(1)}`)
      return sample
    }),
    collectSamples
  )

  const average = samples.reduce((sum, s) => sum + s, 0) / samples.length
  yield* Console.log(
    `Collected ${samples.length} samples, average: ${average.toFixed(1)}`
  )
})
```

**Signature**

```ts
declare const collectWhile: { <Input, Output, Error2 = never, Env2 = never>(predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): <Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Array<Output>, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): Schedule<Array<Output>, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1317)

Since v2.0.0
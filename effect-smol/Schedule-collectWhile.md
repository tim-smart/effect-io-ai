Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectWhile

Returns a new `Schedule` that recurs as long as the specified `predicate`
returns `true`, collecting all outputs of the schedule into an array.

**Example** (Collecting outputs while a condition holds)

```ts
import { Console, Effect, Schedule } from "effect"

// Collect outputs while condition is met
const collectWhileSmall = Schedule.collectWhile(
  Schedule.exponential("100 millis"),
  (metadata) =>
    Effect.succeed(metadata.attempt <= 5 && metadata.elapsed < 2000)
)

const conditionalProgram = Effect.gen(function*() {
  let attempt = 0

  const attempts = yield* Effect.repeat(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Retry attempt ${attempt}`)
      return `attempt-${attempt}`
    }),
    collectWhileSmall
  )

  yield* Console.log(`Collected attempts: [${attempts.join(", ")}]`)
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
  const results = yield* Effect.repeat(
    Effect.succeed("checked"),
    collectWithCheck
  )

  yield* Console.log(`Final collection: ${results.length} items`)
})

// Collect samples with condition
const samples = [12, 18, 24, 30, 36]

const collectSamples = Schedule.collectWhile(
  Schedule.spaced("200 millis"),
  (metadata) =>
    Effect.succeed(metadata.attempt <= 5 && metadata.elapsed < 2000)
)

const samplingProgram = Effect.gen(function*() {
  let index = 0
  const collected = yield* Effect.repeat(
    Effect.gen(function*() {
      const sample = samples[index++]
      yield* Console.log(`Sample: ${sample}`)
      return sample
    }),
    collectSamples
  )

  const average = collected.reduce((sum, s) => sum + s, 0) / collected.length
  yield* Console.log(
    `Collected ${collected.length} samples, average: ${average.toFixed(1)}`
  )
})
```

**Signature**

```ts
declare const collectWhile: { <Input, Output, Error2 = never, Env2 = never>(predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): <Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Array<Output>, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): Schedule<Array<Output>, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1289)

Since v2.0.0
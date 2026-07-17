Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.map

Returns a new `Schedule` that maps each schedule decision to a new output
using the full schedule metadata.

**Details**

The callback receives the schedule input, output, selected delay duration,
current attempt, and elapsed timing information. Return either a plain value
or an `Effect` that produces the new output.

**Example** (Mapping schedule outputs)

```ts
import { Console, Effect, Schedule } from "effect"

// Transform schedule output from number to string
const countSchedule = Schedule.recurs(5).pipe(
  Schedule.map(({ output: count }) => Effect.succeed(`Execution #${count + 1}`))
)

// Map schedule delays to human-readable format
const readableDelays = Schedule.exponential("100 millis").pipe(
  Schedule.map(({ output: delay }) => Effect.succeed(`Next retry in ${delay}`))
)

// Transform numeric output to structured data
const structuredSchedule = Schedule.spaced("1 second").pipe(
  Schedule.map(({ output: recurrence }) => Effect.succeed({
    iteration: recurrence + 1,
    phase: recurrence < 5 ? "warmup" as const : "steady" as const
  }))
)

const program = Effect.gen(function*() {
  const results = yield* Effect.repeat(
    Effect.succeed("task completed"),
    structuredSchedule.pipe(
      Schedule.upTo({ times: 8 }),
      Schedule.tap(({ output: info }) =>
        Console.log(
          `${info.phase} phase - iteration ${info.iteration}`
        )
      )
    )
  )

  yield* Console.log(`Completed iterations`)
})

// Map with effectful transformation
const effectfulMap = Schedule.fixed("2 seconds").pipe(
  Schedule.map(({ output: count }) =>
    Effect.gen(function*() {
      yield* Console.log(`Processing count: ${count}`)
      return count * 10
    })
  )
)

// Use timing metadata in the mapped output
const complexSchedule = Schedule.fibonacci("100 millis").pipe(
  Schedule.map(({ output: delay, attempt }) =>
    Effect.succeed(`Attempt ${attempt} delay: ${delay}`)
  )
)
```

**Signature**

```ts
declare const map: { <Input, Output, Output2, Error2 = never, Env2 = never>(f: (metadata: Metadata<Output, Input>) => Output2 | Effect<Output2, Error2, Env2>): <Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output2, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, f: (metadata: Metadata<Output, Input>) => Output2 | Effect<Output2, Error2, Env2>): Schedule<Output2, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1530)

Since v2.0.0
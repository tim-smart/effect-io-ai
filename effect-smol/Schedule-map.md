Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.map

Returns a new `Schedule` that maps the output of this schedule using the
specified function.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Transform schedule output from number to string
const countSchedule = Schedule.recurs(5).pipe(
  Schedule.map((count) => Effect.succeed(`Execution #${count + 1}`))
)

// Map schedule delays to human-readable format
const readableDelays = Schedule.exponential("100 millis").pipe(
  Schedule.map((duration) => Effect.succeed(`Next retry in ${duration}`))
)

// Transform numeric output to structured data
const structuredSchedule = Schedule.spaced("1 second").pipe(
  Schedule.map((recurrence) => Effect.succeed({
    iteration: recurrence + 1,
    timestamp: new Date().toISOString(),
    phase: recurrence < 5 ? "warmup" as const : "steady" as const
  }))
)

const program = Effect.gen(function*() {
  const results = yield* Effect.repeat(
    Effect.succeed("task completed"),
    structuredSchedule.pipe(
      Schedule.take(8),
      Schedule.tapOutput((info) =>
        Console.log(
          `${info.phase} phase - iteration ${info.iteration} at ${info.timestamp}`
        )
      )
    )
  )

  yield* Console.log(`Completed iterations`)
})

// Map with effectful transformation
const effectfulMap = Schedule.fixed("2 seconds").pipe(
  Schedule.map((count) =>
    Effect.gen(function*() {
      yield* Console.log(`Processing count: ${count}`)
      return count * 10
    })
  )
)

// Combine mapping with other schedule operations
const complexSchedule = Schedule.fibonacci("100 millis").pipe(
  Schedule.map((delay) => Effect.succeed(`Delay: ${delay}`))
)
```

**Signature**

```ts
declare const map: { <Output, Output2, Error2 = never, Env2 = never>(f: (output: Output) => Output2 | Effect<Output2, Error2, Env2>): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output2, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, f: (output: Output) => Output2 | Effect<Output2, Error2, Env2>): Schedule<Output2, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2251)

Since v2.0.0
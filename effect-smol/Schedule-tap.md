Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.tap

Returns a new `Schedule` that allows execution of an effectful function for
every decision of the schedule, but does not alter the inputs and outputs of
the schedule.

**Details**

The callback receives the full schedule metadata, including the input, output,
computed delay duration, current attempt, and elapsed timing information.

**Example** (Tapping schedule metadata)

```ts
import { Console, Effect, Schedule } from "effect"

const monitoredSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.take(5),
  Schedule.tap((metadata) =>
    Console.log(
      `Attempt ${metadata.attempt} produced ${metadata.output} ` +
        `after ${metadata.elapsed}ms; next delay is ${metadata.duration}`
    )
  )
)

const program = Effect.retry(
  Effect.fail("transient error"),
  monitoredSchedule
)
```

**Signature**

```ts
declare const tap: { <Output, Input, X, Error2, Env2>(f: (metadata: Metadata<Output, Input>) => Effect<X, Error2, Env2>): <Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, X, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, f: (metadata: Metadata<Output, Input>) => Effect<X, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2777)

Since v4.0.0
Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Schedule

A Schedule defines a strategy for repeating or retrying effects based on some policy.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Basic retry schedule - retry up to 3 times with exponential backoff
const retrySchedule = Schedule.exponential("100 millis").pipe(
  Schedule.compose(Schedule.recurs(3))
)

// Basic repeat schedule - repeat every 30 seconds forever
const repeatSchedule: Schedule.Schedule<number, unknown, never> = Schedule
  .spaced("30 seconds")

// Advanced schedule with custom logic
const smartRetry = Schedule.exponential("1 second")

const program = Effect.gen(function*() {
  // Using retry schedule
  const result1 = yield* Effect.retry(
    Effect.fail("temporary error"),
    retrySchedule
  )

  // Using repeat schedule
  yield* Console.log("heartbeat").pipe(
    Effect.repeat(repeatSchedule.pipe(Schedule.take(5)))
  )
})
```

**Signature**

```ts
export interface Schedule<out Output, in Input = unknown, out Error = never, out Env = never>
  extends Schedule.Variance<Output, Input, Error, Env>, Pipeable
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L89)

Since v2.0.0
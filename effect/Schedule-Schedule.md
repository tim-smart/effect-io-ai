Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Schedule

A Schedule defines a strategy for repeating or retrying effects based on some policy.

**Example** (Defining retry and repeat schedules)

```ts
import { Console, Data, Effect, Schedule } from "effect"

class NetworkError extends Data.TaggedError("NetworkError")<{
  readonly attempt: number
}> {}

// Basic retry schedule - retry up to 3 times with exponential backoff
const retrySchedule = Schedule.max([
  Schedule.exponential("100 millis"),
  Schedule.recurs(3)
])

// Basic repeat schedule - repeat every 30 seconds forever
const repeatSchedule: Schedule.Schedule<number, unknown, never> = Schedule
  .spaced("30 seconds")

const program = Effect.gen(function*() {
  let attempts = 0

  const result1 = yield* Effect.retry(
    Effect.gen(function*() {
      attempts++
      if (attempts < 3) {
        return yield* Effect.fail(new NetworkError({ attempt: attempts }))
      }
      return "Success"
    }),
    retrySchedule
  )
  console.log(result1) // "Success"

  yield* Console.log("heartbeat").pipe(
    Effect.repeat(repeatSchedule.pipe(Schedule.upTo({ times: 5 })))
  )
})
```

**Signature**

```ts
export interface Schedule<out Output, in Input = unknown, out Error = never, out Env = never>
  extends Schedule.Variance<Output, Input, Error, Env>, Pipeable
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L78)

Since v2.0.0
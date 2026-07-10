Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.min

Combines schedules by recurring while at least one schedule wants to recur,
using the minimum delay between recurrences and outputting that minimum delay.

**When to use**

Use when a combined policy should continue while any schedule still recurs,
and should wait for the fastest schedule between recurrences.

**Example** (Combining retry schedules by their minimum delay)

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

const retrySchedule = Schedule.min([
  Schedule.fixed("5 seconds"),
  Schedule.exponential("5 seconds"),
  Schedule.spaced("10 seconds")
])

const program = Effect.gen(function*() {
  let attempt = 0

  yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Retry attempt ${attempt}`)
      if (attempt < 3) {
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }
      return "success"
    }),
    retrySchedule.pipe(
      Schedule.tap(({ output: duration }) =>
        Console.log(`Waiting for the fastest schedule: ${duration}`)
      )
    )
  )
})
```

**Signature**

```ts
declare const min: <const Schedules extends NonEmptyReadonlyArray<Schedule<any, any, any, any>>>(schedules: Schedules) => Schedule<Duration.Duration, UnionToIntersection<Input<Schedules[number]>>, Error<Schedules[number]>, Env<Schedules[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1174)

Since v4.0.0
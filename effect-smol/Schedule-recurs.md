Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.recurs

Returns a `Schedule` which can only be stepped the specified number of
`times` before it terminates.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Basic recurs - retry at most 3 times
const maxThreeAttempts = Schedule.recurs(3)

// Retry a failing operation at most 5 times
const program = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Attempt ${attempt}`)

      if (attempt < 4) {
        yield* Effect.fail(new Error(`Attempt ${attempt} failed`))
      }

      return `Success on attempt ${attempt}`
    }),
    Schedule.recurs(5) // Will retry up to 5 times
  )

  yield* Console.log(`Final result: ${result}`)
})

// Combining recurs with other schedules for sophisticated retry logic
const complexRetry = Schedule.exponential("100 millis").pipe(
  Schedule.compose(Schedule.recurs(3)) // At most 3 attempts
)

// Repeat an effect exactly 10 times
const exactlyTenTimes = Effect.gen(function*() {
  yield* Console.log("Executing task...")
  return Math.random()
}).pipe(
  Effect.repeat(Schedule.recurs(10))
)

// The schedule outputs the current recurrence count (0-based)
const countingSchedule = Schedule.recurs(3).pipe(
  Schedule.tapOutput((count) => Console.log(`Execution #${count + 1}`))
)
```

**Signature**

```ts
declare const recurs: (times: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2451)

Since v2.0.0
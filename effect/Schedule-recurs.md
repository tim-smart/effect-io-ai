Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.recurs

Returns a `Schedule` which can only be stepped the specified number of
`times` before it terminates.

**When to use**

Use when you need a counter schedule with no additional delay.

**Gotchas**

`recurs(n)` counts schedule recurrences, not the first evaluation of the
effect being repeated or retried. For retrying, this means one initial
attempt plus at most `n` retries.

**Example** (Limiting recurrences)

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

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
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }

      return `Success on attempt ${attempt}`
    }),
    Schedule.recurs(5) // Will retry up to 5 times
  )

  yield* Console.log(`Final result: ${result}`)
})

// Combining recurs with other schedules for sophisticated retry logic
const complexRetry = Schedule.max([
  Schedule.exponential("100 millis"),
  Schedule.recurs(3) // At most 3 retries
])

// Allow ten recurrences after the initial run
const tenRecurrences = Effect.gen(function*() {
  yield* Console.log("Executing task...")
  return "completed"
}).pipe(
  Effect.repeat(Schedule.recurs(10))
)

// The schedule outputs the current recurrence count (0-based)
const countingSchedule = Schedule.recurs(3).pipe(
  Schedule.tap(({ output: count }) => Console.log(`Execution #${count + 1}`))
)
```

**See**

- `upTo` for limiting an existing schedule

**Signature**

```ts
declare const recurs: (times: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1763)

Since v2.0.0
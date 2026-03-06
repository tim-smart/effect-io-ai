Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.exponential

A schedule that always recurs, but will wait a certain amount between
repetitions, given by `base * factor.pow(n)`, where `n` is the number of
repetitions so far. Returns the current duration between recurrences.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryFailure extends Data.TaggedError("RetryFailure")<{ readonly message: string }> {}

// Basic exponential backoff with default factor of 2
const basicExponential = Schedule.exponential("100 millis")
// Delays: 100ms, 200ms, 400ms, 800ms, 1600ms, ...

// Custom exponential backoff with factor 1.5
const gentleExponential = Schedule.exponential("200 millis", 1.5)
// Delays: 200ms, 300ms, 450ms, 675ms, 1012ms, ...

// Retry with exponential backoff (limited to 5 attempts)
const retryPolicy = Schedule.exponential("50 millis").pipe(
  Schedule.compose(Schedule.recurs(5))
)

const program = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      if (attempt < 4) {
        yield* Console.log(`Attempt ${attempt} failed, retrying...`)
        return yield* Effect.fail(new RetryFailure({ message: `Failure ${attempt}` }))
      }
      return `Success on attempt ${attempt}`
    }),
    retryPolicy
  )

  yield* Console.log(`Final result: ${result}`)
})

// Will retry with delays: 50ms, 100ms, 200ms before success
```

**Signature**

```ts
declare const exponential: (base: Duration.Input, factor?: number) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2041)

Since v2.0.0
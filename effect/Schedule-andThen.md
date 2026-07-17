Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.andThen

Returns a schedule that runs `self` to completion, then runs `other`, and
merges their outputs.

**Example** (Sequencing quick and slow retries)

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// First retry 3 times quickly, then switch to slower retries
const quickRetries = Schedule.exponential("100 millis").pipe(
  Schedule.upTo({ times: 3 })
)
const slowRetries = Schedule.exponential("1 second").pipe(
  Schedule.upTo({ times: 2 })
)

const combinedRetries = Schedule.andThen(quickRetries, slowRetries)

const program = Effect.gen(function*() {
  let attempt = 0
  yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Attempt ${attempt}`)
      if (attempt < 6) {
        return yield* Effect.fail(new RetryAttemptError({ message: `Failure ${attempt}` }))
      }
      return `Success on attempt ${attempt}`
    }),
    combinedRetries
  )
})
```

**Signature**

```ts
declare const andThen: { <Output2, Input2, Error2, Env2>(other: Schedule<Output2, Input2, Error2, Env2>): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output | Output2, Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<Output | Output2, Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L631)

Since v2.0.0
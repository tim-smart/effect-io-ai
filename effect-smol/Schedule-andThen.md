Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.andThen

Returns a new `Schedule` that will first execute the left (i.e. `self`)
schedule to completion. Once the left schedule is complete, the right (i.e.
`other`) schedule will be executed to completion.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// First retry 3 times quickly, then switch to slower retries
const quickRetries = Schedule.exponential("100 millis").pipe(
  Schedule.take(3)
)
const slowRetries = Schedule.exponential("1 second").pipe(
  Schedule.take(2)
)

const combinedRetries = Schedule.andThen(quickRetries, slowRetries)

const program = Effect.gen(function*() {
  let attempt = 0
  yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Attempt ${attempt}`)
      if (attempt < 6) {
        yield* Effect.fail(new Error(`Failure ${attempt}`))
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L694)

Since v2.0.0
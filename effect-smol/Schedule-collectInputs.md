Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectInputs

Returns a new `Schedule` that follows `self` and outputs the inputs seen so
far as an array.

**Details**
This does not make the schedule run forever. The collected schedule stops
when `self` stops and fails when `self` fails.

**Example** (Collecting schedule inputs)

```ts
import { Console, Effect, Schedule } from "effect"

// Collect all inputs passed to the schedule
const inputCollector = Schedule.collectInputs(
  Schedule.spaced("100 millis")
)

const program = Effect.gen(function*() {
  let counter = 0
  yield* Effect.repeat(
    Effect.gen(function*() {
      counter++
      yield* Console.log(`Iteration ${counter}`)
      return `result-${counter}`
    }),
    inputCollector.pipe(Schedule.take(4))
  )
})
```

**Signature**

```ts
declare const collectInputs: <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Array<Input>, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1094)

Since v2.0.0
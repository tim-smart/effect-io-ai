Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectInputs

Returns a new `Schedule` that always recurs, collecting all inputs of the
schedule into an array.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1178)

Since v2.0.0
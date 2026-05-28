Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectOutputs

Returns a new `Schedule` that follows `self` and outputs the schedule outputs
seen so far as an array.

**Details**

This does not make the schedule run forever. The collected schedule stops
when `self` stops and fails when `self` fails.

**Example** (Collecting schedule outputs)

```ts
import { Console, Effect, Schedule } from "effect"

// Collect all outputs from the schedule
const outputCollector = Schedule.collectOutputs(
  Schedule.recurs(4)
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task-result"
    }),
    outputCollector.pipe(Schedule.take(4))
  )
})
```

**Signature**

```ts
declare const collectOutputs: <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Array<Output>, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1189)

Since v4.0.0
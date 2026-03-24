Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.passthrough

Returns a new `Schedule` that outputs the inputs of the specified schedule.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Create a schedule that outputs the inputs instead of original outputs
const inputSchedule = Schedule.passthrough(
  Schedule.exponential("100 millis").pipe(Schedule.take(3))
)

const program = Effect.gen(function*() {
  let counter = 0
  yield* Effect.repeat(
    Effect.gen(function*() {
      counter++
      yield* Console.log(`Task ${counter} executed`)
      return `result-${counter}`
    }),
    inputSchedule
  )
})
```

**Signature**

```ts
declare const passthrough: <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Input, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2338)

Since v2.0.0
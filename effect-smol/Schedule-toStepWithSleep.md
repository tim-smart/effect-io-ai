Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.toStepWithSleep

Extracts a step function from a Schedule that automatically handles sleep delays.

**Example**

```ts
import { Effect, Schedule } from "effect"

// Convert schedule to step function with automatic sleeping
const schedule = Schedule.spaced("1 second").pipe(Schedule.take(3))

const program = Effect.gen(function*() {
  const stepWithSleep = yield* Schedule.toStepWithSleep(schedule)

  // Each call will automatically sleep for the scheduled delay
  console.log("Starting...")
  const result1 = yield* stepWithSleep("first")
  console.log(`First result: ${result1}`)

  const result2 = yield* stepWithSleep("second")
  console.log(`Second result: ${result2}`)

  const result3 = yield* stepWithSleep("third")
  console.log(`Third result: ${result3}`)
})
```

**Signature**

```ts
declare const toStepWithSleep: <Output, Input, Error, Env>(schedule: Schedule<Output, Input, Error, Env>) => Effect<(input: Input) => Pull.Pull<Output, Error, Output, Env>, never, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L508)

Since v4.0.0
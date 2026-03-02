Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.toStep

Extracts the step function from a Schedule.

**Example**

```ts
import { Effect, Schedule } from "effect"

// Extract step function from an existing schedule
const schedule = Schedule.exponential("100 millis").pipe(Schedule.take(3))

const program = Effect.gen(function*() {
  const stepFn = yield* Schedule.toStep(schedule)

  // Use the step function directly for custom logic
  const now = Date.now()
  const result = yield* stepFn(now, "input")

  console.log(`Step result: ${result}`)
})
```

**Signature**

```ts
declare const toStep: <Output, Input, Error, Env>(schedule: Schedule<Output, Input, Error, Env>) => Effect<(now: number, input: Input) => Pull.Pull<[Output, Duration.Duration], Error, Output, Env>, never, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L431)

Since v4.0.0
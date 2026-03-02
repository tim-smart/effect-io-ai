Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromStep

Creates a Schedule from a step function that returns a Pull.

**Example**

```ts
import { Schedule } from "effect"

// fromStep is an advanced function for creating custom schedules
// It requires a step function that returns a Pull value

// Most users should use simpler schedule constructors like:
const simpleSchedule = Schedule.exponential("100 millis")
const spacedSchedule = Schedule.spaced("1 second")
const recurringSchedule = Schedule.recurs(5)

// These can be combined and transformed as needed
const complexSchedule = simpleSchedule.pipe(
  Schedule.compose(Schedule.recurs(3))
)
```

**Signature**

```ts
declare const fromStep: <Input, Output, EnvX, Error, ErrorX, Env>(step: Effect<(now: number, input: Input) => Pull.Pull<[Output, Duration.Duration], ErrorX, Output, EnvX>, Error, Env>) => Schedule<Output, Input, Error | Pull.ExcludeDone<ErrorX>, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L346)

Since v4.0.0
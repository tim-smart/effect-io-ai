Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromStepWithMetadata

Creates a Schedule from a step function that receives metadata about the schedule's execution.

**Example**

```ts
import { Effect, Schedule } from "effect"

// fromStepWithMetadata is an advanced function for creating schedules
// that need access to execution metadata like timing and recurrence count

// Most users should use simpler metadata-aware functions like:
const metadataSchedule = Schedule.spaced("1 second").pipe(
  Schedule.collectWhile((metadata) => Effect.succeed(metadata.attempt <= 5))
)

// Or use existing schedules with metadata transformations:
const conditionalSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.tapOutput((output) => Effect.log(`Output: ${output}`))
)
```

**Signature**

```ts
declare const fromStepWithMetadata: <Input, Output, EnvX, ErrorX, Error, Env>(step: Effect<(options: InputMetadata<Input>) => Pull.Pull<[Output, Duration.Duration], ErrorX, Output, EnvX>, Error, Env>) => Schedule<Output, Input, Error | Pull.ExcludeDone<ErrorX>, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L395)

Since v4.0.0
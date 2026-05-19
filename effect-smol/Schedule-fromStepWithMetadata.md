Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromStepWithMetadata

Creates a Schedule from a step function that receives metadata about the schedule's execution.

**Example** (Creating a metadata-aware schedule)

```ts
import { Cause, Duration, Effect, Schedule } from "effect"

const firstThreeInputs = Schedule.fromStepWithMetadata(Effect.succeed((metadata: Schedule.InputMetadata<string>) => {
  if (metadata.attempt > 3) {
    return Cause.done("finished")
  }

  return Effect.succeed([
    `attempt ${metadata.attempt}: ${metadata.input}`,
    Duration.millis(250)
  ] as [string, Duration.Duration])
}))
```

**Signature**

```ts
declare const fromStepWithMetadata: <Input, Output, EnvX, ErrorX, Error, Env>(step: Effect<(options: InputMetadata<Input>) => Pull.Pull<[Output, Duration.Duration], ErrorX, Output, EnvX>, Error, Env>) => Schedule<Output, Input, Error | Pull.ExcludeDone<ErrorX>, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L394)

Since v4.0.0
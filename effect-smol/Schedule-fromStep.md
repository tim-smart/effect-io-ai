Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromStep

Creates a Schedule from a step function that returns a Pull.

**Example** (Creating a custom schedule from a step function)

```ts
import { Cause, Duration, Effect, Schedule } from "effect"

const schedule = Schedule.fromStep(Effect.sync(() => {
  let count = 0

  return (_now: number, _input: string) => {
    if (count >= 3) {
      return Cause.done(count)
    }
    return Effect.succeed([count++, Duration.millis(100)] as [number, Duration.Duration])
  }
}))
```

**Signature**

```ts
declare const fromStep: <Input, Output, EnvX, Error, ErrorX, Env>(step: Effect<(now: number, input: Input) => Pull.Pull<[Output, Duration.Duration], ErrorX, Output, EnvX>, Error, Env>) => Schedule<Output, Input, Error | Pull.ExcludeDone<ErrorX>, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L382)

Since v4.0.0
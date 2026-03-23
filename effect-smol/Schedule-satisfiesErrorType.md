Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesErrorType

Ensures that the provided schedule respects a specified error type.

**Example**

```ts
import { Data, Schedule } from "effect"

// Create a custom error using Data.TaggedError
class CustomError extends Data.TaggedError("CustomError")<{
  message: string
}> {}

// Ensure schedule handles CustomError types
const errorSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.satisfiesErrorType<CustomError>()
)

// Ensure schedule handles never errors (no errors)
const safeSchedule = Schedule.spaced("1 second").pipe(
  Schedule.satisfiesErrorType<never>()
)
```

**Signature**

```ts
declare const satisfiesErrorType: <T>() => <Error extends T, Output = never, Input = unknown, Env = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3377)

Since v2.0.0
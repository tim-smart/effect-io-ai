Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesErrorType

Ensures that a schedule's error type extends a given type `T`.

**Details**

This helper is checked at compile time and does not change the schedule's
runtime behavior.

**Example** (Constraining schedule error types)

```ts
import { Data, Schedule } from "effect"

// Create a custom error using Data.TaggedError
class CustomError extends Data.TaggedError("CustomError")<{
  message: string
}> {}

declare const CustomErrorSchedule: Schedule.Schedule<number, unknown, CustomError>
declare const StringErrorSchedule: Schedule.Schedule<number, unknown, string>

const satisfiesCustomError = Schedule.satisfiesErrorType<CustomError>()

// This works because the schedule error type is CustomError.
const validSchedule = satisfiesCustomError(CustomErrorSchedule)

// This would cause a TypeScript compilation error:
// const invalidSchedule = satisfiesCustomError(StringErrorSchedule)
```

**Signature**

```ts
declare const satisfiesErrorType: <T>() => <Error extends T, Output = never, Input = unknown, Env = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3524)

Since v4.0.0
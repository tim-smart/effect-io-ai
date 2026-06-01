Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesServicesType

Ensures that a schedule's context type extends a given type `T`.

**Details**

This helper is checked at compile time and does not change the schedule's
runtime behavior.

**Example** (Constraining schedule service types)

```ts
import { Schedule } from "effect"

interface Logger {
  readonly log: (message: string) => void
}

declare const LoggerSchedule: Schedule.Schedule<number, unknown, never, Logger>
declare const NumberSchedule: Schedule.Schedule<number, unknown, never, number>

const satisfiesLogger = Schedule.satisfiesServicesType<Logger>()

// This works because the schedule context type is Logger.
const validSchedule = satisfiesLogger(LoggerSchedule)

// This would cause a TypeScript compilation error:
// const invalidSchedule = satisfiesLogger(NumberSchedule)
```

**Signature**

```ts
declare const satisfiesServicesType: <T>() => <Env extends T, Output = never, Input = unknown, Error = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3617)

Since v4.0.0
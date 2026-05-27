Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesOutputType

Ensures that a schedule's output type extends a given type `T`.

**Details**

This helper is checked at compile time and does not change the schedule's
runtime behavior.

**Example** (Constraining schedule output types)

```ts
import { Schedule } from "effect"

declare const StringOutputSchedule: Schedule.Schedule<string>
declare const NumberOutputSchedule: Schedule.Schedule<number>

const satisfiesStringOutput = Schedule.satisfiesOutputType<string>()

// This works because the schedule output type is string.
const validSchedule = satisfiesStringOutput(StringOutputSchedule)

// This would cause a TypeScript compilation error:
// const invalidSchedule = satisfiesStringOutput(NumberOutputSchedule)
```

**Signature**

```ts
declare const satisfiesOutputType: <T>() => <Output extends T, Error = never, Input = unknown, Env = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3530)

Since v4.0.0
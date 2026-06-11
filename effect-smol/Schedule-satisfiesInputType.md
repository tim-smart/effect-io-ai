Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesInputType

Ensures that a schedule's input type extends a given type `T`.

**When to use**

Use when you need a generic helper to prove that an existing schedule can
consume a required input type without changing runtime behavior.

**Example** (Constraining schedule input types)

```ts
import { Schedule } from "effect"

declare const StringInputSchedule: Schedule.Schedule<number, string>
declare const NumberInputSchedule: Schedule.Schedule<number, number>

const satisfiesStringInput = Schedule.satisfiesInputType<string>()

// This works because the schedule input type is string.
const validSchedule = satisfiesStringInput(StringInputSchedule)

// This would cause a TypeScript compilation error:
// const invalidSchedule = satisfiesStringInput(NumberInputSchedule)
```

**See**

- `setInputType` for adapting an input-agnostic schedule

**Signature**

```ts
declare const satisfiesInputType: <T>() => <Input extends T, Output = never, Error = never, Env = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3423)

Since v4.0.0
Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesInputType

Ensures that the provided schedule respects a specified input type.

**Example**

```ts
import { Schedule } from "effect"

// Ensure schedule accepts string inputs
const stringSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.satisfiesInputType<string>()
)

// Ensure schedule accepts number inputs
const numberSchedule = Schedule.spaced("1 second").pipe(
  Schedule.satisfiesInputType<number>()
)

// Type-level constraint - this would be a compile error:
// Schedule.recurs(3).pipe(Schedule.satisfiesInputType<CustomType>())
// where CustomType doesn't match the schedule's input type
```

**Signature**

```ts
declare const satisfiesInputType: <T>() => <Input extends T, Output = never, Error = never, Env = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3299)

Since v2.0.0
Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesOutputType

Ensures that the provided schedule respects a specified output type.

**Example**

```ts
import { Effect, Schedule } from "effect"

// satisfiesOutputType is a type-level function for compile-time constraints
// It ensures that a schedule's output type matches the specified type

// Example with string output
const stringSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.map(() => Effect.succeed("hello")),
  Schedule.satisfiesOutputType<string>()
)
```

**Signature**

```ts
declare const satisfiesOutputType: <T>() => <Output extends T, Error = never, Input = unknown, Env = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3346)

Since v2.0.0
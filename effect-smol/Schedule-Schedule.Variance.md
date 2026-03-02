Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Schedule.Variance

Variance interface that defines the type parameter relationships for Schedule.

**Example**

```ts
import { Effect, Schedule } from "effect"

// Understanding Schedule variance:
// - Output: covariant (can be a subtype)
// - Input: contravariant (can accept supertypes)
// - Error: covariant (can be a subtype)
// - Env: covariant (can be a subtype)

// Schedule that produces strings, accepts any input
const stringSchedule = Schedule.spaced("1 second").pipe(
  Schedule.map(() => Effect.succeed("tick"))
)

// Schedule that only accepts Error inputs
const errorSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.take(5)
)

// Schedule requiring a service environment
const serviceSchedule = Schedule.spaced("5 seconds")
```

**Signature**

```ts
export interface Variance<out Output, in Input, out Error, out Env> {
    readonly [TypeId]: VarianceStruct<Output, Input, Error, Env>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L246)

Since v2.0.0
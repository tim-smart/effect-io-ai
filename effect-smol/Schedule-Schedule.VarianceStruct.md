Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Schedule.VarianceStruct

Internal structure that holds the variance annotations for Schedule type parameters.

**Example**

```ts
import { Effect, Schedule } from "effect"

// The variance struct defines how Schedule's type parameters behave
// This internal interface is used for type variance annotations

// Example showing variance relationships:
interface Animal {
  name: string
}
interface Dog extends Animal {
  breed: string
}

// Output is covariant - more specific types can be substituted
const stringSchedule = Schedule.spaced("1 second").pipe(
  Schedule.map(() => Effect.succeed("output"))
)

// Input is contravariant - more general types can be accepted
const numberSchedule = Schedule.exponential("100 millis")

// This enables proper type relationships where schedules can be composed safely
```

**Signature**

```ts
export interface VarianceStruct<out Output, in Input, out Error, out Env> {
    readonly _Out: Covariant<Output>
    readonly _In: Contravariant<Input>
    readonly _Error: Covariant<Error>
    readonly _Env: Covariant<Env>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L282)

Since v2.0.0
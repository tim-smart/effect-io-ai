Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.setInputType

Sets the input type of the provided schedule without altering its behavior.

**When to use**

Use to adapt a schedule that does not depend on its input values.

**Details**

This helper is checked at compile time and does not change the schedule's
runtime behavior.

**Example** (Setting a schedule input type)

```ts
import { Schedule } from "effect"

const schedule = Schedule.recurs(3).pipe(
  Schedule.setInputType<string>()
)
```

**See**

- `satisfiesInputType` for checking an existing input type

**Signature**

```ts
declare const setInputType: <T>() => <Output, Error, Env>(self: Schedule<Output, T, Error, Env>) => Schedule<Output, T, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3511)

Since v4.0.0
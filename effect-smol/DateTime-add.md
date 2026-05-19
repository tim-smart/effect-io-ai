Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.add

Add the given `amount` of `unit`'s to a `DateTime`.

The time zone is taken into account when adding days, weeks, months, and
years.

**Example** (Adding date and time parts)

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.makeUnsafe(0).pipe(
  DateTime.add({ minutes: 5 })
)
```

**Signature**

```ts
declare const add: { (parts: Partial<DateTime.PartsForMath>): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, parts: Partial<DateTime.PartsForMath>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2158)

Since v3.6.0
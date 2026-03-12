Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.setParts

Set the different parts of a `DateTime` as an object.

The date will be time zone adjusted for `DateTime.Zoned`.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T12:00:00Z")
const updated = DateTime.setParts(dt, {
  year: 2025,
  month: 6,
  day: 15
})

console.log(DateTime.formatIso(updated)) // "2025-06-15T12:00:00.000Z"
```

**Signature**

```ts
declare const setParts: { (parts: Partial<DateTime.PartsWithWeekday>): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, parts: Partial<DateTime.PartsWithWeekday>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1457)

Since v3.6.0
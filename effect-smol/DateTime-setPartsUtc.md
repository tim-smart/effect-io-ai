Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.setPartsUtc

Set the different parts of a `DateTime` as an object.

The parts are always interpreted as UTC, ignoring any time zone information.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T12:00:00Z")
const updated = DateTime.setPartsUtc(dt, {
  year: 2025,
  hour: 18
})

console.log(DateTime.formatIso(updated)) // "2025-01-01T18:00:00.000Z"
```

**Signature**

```ts
declare const setPartsUtc: { (parts: Partial<DateTime.PartsWithWeekday>): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, parts: Partial<DateTime.PartsWithWeekday>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1484)

Since v3.6.0
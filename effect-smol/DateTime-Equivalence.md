Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.Equivalence

An `Equivalence` for comparing two `DateTime` values for equality.

Two `DateTime` values are considered equivalent if they represent the same
point in time, regardless of their time zone.

**Example**

```ts
import { DateTime } from "effect"

const utc = DateTime.makeUnsafe("2024-01-01T12:00:00Z")
const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: "Europe/London"
})

console.log(DateTime.Equivalence(utc, zoned)) // true
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<DateTime>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L392)

Since v3.6.0
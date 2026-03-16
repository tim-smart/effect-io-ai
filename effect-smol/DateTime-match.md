Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.match

Pattern match on a `DateTime` to handle `Utc` and `Zoned` cases differently.

**Example**

```ts
import { DateTime } from "effect"

const dt1 = DateTime.nowUnsafe() // Utc
const dt2 = DateTime.makeZonedUnsafe(new Date(), { timeZone: "Europe/London" }) // Zoned

const result1 = DateTime.match(dt1, {
  onUtc: (utc) => `UTC: ${DateTime.formatIso(utc)}`,
  onZoned: (zoned) => `Zoned: ${DateTime.formatIsoZoned(zoned)}`
})

const result2 = DateTime.match(dt2, {
  onUtc: (utc) => `UTC: ${DateTime.formatIso(utc)}`,
  onZoned: (zoned) => `Zoned: ${DateTime.formatIsoZoned(zoned)}`
})
```

**Signature**

```ts
declare const match: { <A, B>(options: { readonly onUtc: (_: Utc) => A; readonly onZoned: (_: Zoned) => B; }): (self: DateTime) => A | B; <A, B>(self: DateTime, options: { readonly onUtc: (_: Utc) => A; readonly onZoned: (_: Zoned) => B; }): A | B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1815)

Since v3.6.0
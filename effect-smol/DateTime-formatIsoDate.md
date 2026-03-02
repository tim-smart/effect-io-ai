Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIsoDate

Format a `DateTime` as a time zone adjusted ISO date string.

Returns only the date part (YYYY-MM-DD) after applying time zone adjustments.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T23:30:00Z")
console.log(DateTime.formatIsoDate(dt)) // "2024-01-01"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T23:30:00Z", {
  timeZone: "Pacific/Auckland" // UTC+12/13
})
console.log(DateTime.formatIsoDate(zoned)) // "2024-01-02" (next day in Auckland)
```

**Signature**

```ts
declare const formatIsoDate: (self: DateTime) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2263)

Since v3.6.0
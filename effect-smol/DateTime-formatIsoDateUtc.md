Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIsoDateUtc

Format a `DateTime` as a UTC ISO date string.

Returns only the date part (YYYY-MM-DD) in UTC, ignoring any time zone.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T23:30:00Z")
console.log(DateTime.formatIsoDateUtc(dt)) // "2024-01-01"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T23:30:00Z", {
  timeZone: "Pacific/Auckland"
})
console.log(DateTime.formatIsoDateUtc(zoned)) // "2024-01-01" (always UTC)
```

**Signature**

```ts
declare const formatIsoDateUtc: (self: DateTime) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2245)

Since v3.6.0
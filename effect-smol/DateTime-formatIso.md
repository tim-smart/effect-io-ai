Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIso

Format a `DateTime` as a UTC ISO string.

Always returns the UTC representation in ISO 8601 format, ignoring any time zone.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T12:30:45.123Z")
console.log(DateTime.formatIso(dt)) // "2024-01-01T12:30:45.123Z"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:30:45.123Z", {
  timeZone: "Europe/London"
})
console.log(DateTime.formatIso(zoned)) // "2024-01-01T12:30:45.123Z"
```

**Signature**

```ts
declare const formatIso: (self: DateTime) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2240)

Since v3.6.0
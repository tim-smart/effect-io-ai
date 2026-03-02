Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zonedOffsetIso

Format the time zone offset of a `DateTime.Zoned` as an ISO string.

The offset is formatted as "±HH:MM".

**Example**

```ts
import { DateTime } from "effect"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: DateTime.zoneMakeOffset(3 * 60 * 60 * 1000) // +3 hours
})

const offsetString = DateTime.zonedOffsetIso(zoned)
console.log(offsetString) // "+03:00"
```

**Signature**

```ts
declare const zonedOffsetIso: (self: Zoned) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1329)

Since v3.6.0
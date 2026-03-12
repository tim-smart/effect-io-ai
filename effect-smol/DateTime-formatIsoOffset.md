Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIsoOffset

Format a `DateTime.Zoned` as an ISO string with an offset.

For `DateTime.Utc`, returns the same as `formatIso`. For `DateTime.Zoned`,
includes the time zone offset in the format.

**Example**

```ts
import { DateTime } from "effect"

const utc = DateTime.makeUnsafe("2024-01-01T12:00:00Z")
console.log(DateTime.formatIsoOffset(utc)) // "2024-01-01T12:00:00.000Z"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: DateTime.zoneMakeOffset(3 * 60 * 60 * 1000)
})
console.log(DateTime.formatIsoOffset(zoned)) // "2024-01-01T15:00:00.000+03:00"
```

**Signature**

```ts
declare const formatIsoOffset: (self: DateTime) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2268)

Since v3.6.0
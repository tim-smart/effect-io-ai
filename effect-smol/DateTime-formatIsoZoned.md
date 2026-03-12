Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIsoZoned

Format a `DateTime.Zoned` as a string.

It uses the format: `YYYY-MM-DDTHH:mm:ss.sss+HH:MM[Time/Zone]`.

**Example**

```ts
import { DateTime } from "effect"

const zoned = DateTime.makeZonedUnsafe("2024-06-15T14:30:45.123Z", {
  timeZone: "Europe/London"
})

const formatted = DateTime.formatIsoZoned(zoned)
console.log(formatted) // "2024-06-15T15:30:45.123+01:00[Europe/London]"

const offsetZone = DateTime.makeZonedUnsafe("2024-06-15T14:30:45.123Z", {
  timeZone: DateTime.zoneMakeOffset(3 * 60 * 60 * 1000)
})

const offsetFormatted = DateTime.formatIsoZoned(offsetZone)
console.log(offsetFormatted) // "2024-06-15T17:30:45.123+03:00"
```

**Signature**

```ts
declare const formatIsoZoned: (self: Zoned) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2297)

Since v3.6.0
Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zonedOffset

Calculate the time zone offset of a `DateTime.Zoned` in milliseconds.

Returns the offset from UTC in milliseconds. Positive values indicate
time zones ahead of UTC, negative values indicate time zones behind UTC.

**Example**

```ts
import { DateTime } from "effect"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:00:00Z", {
  timeZone: "Europe/London"
})

const offset = DateTime.zonedOffset(zoned)
console.log(offset) // 0 (London is UTC+0 in winter)
```

**Signature**

```ts
declare const zonedOffset: (self: Zoned) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1307)

Since v3.6.0
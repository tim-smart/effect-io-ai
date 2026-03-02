Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toPartsUtc

Get the different parts of a `DateTime` as an object.

The parts will always be in UTC, ignoring any time zone information.

**Example**

```ts
import { DateTime } from "effect"

const zoned = DateTime.makeZonedUnsafe("2024-01-01T12:30:45.123Z", {
  timeZone: "Europe/London"
})
const parts = DateTime.toPartsUtc(zoned)

console.log(parts)
// Always returns UTC parts regardless of time zone
```

**Signature**

```ts
declare const toPartsUtc: (self: DateTime) => DateTime.PartsWithWeekday
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1429)

Since v3.6.0
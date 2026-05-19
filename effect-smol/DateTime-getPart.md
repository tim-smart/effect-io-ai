Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.getPart

Get a part of a `DateTime` as a number.

The part will be time zone adjusted.

**Example** (Reading DateTime parts by key)

```ts
import { DateTime } from "effect"

const dateTime = DateTime.makeZonedUnsafe({ year: 2024 }, {
  timeZone: "Europe/London"
})
const year = DateTime.getPart(dateTime, "year")
console.log(year) // 2024
```

**Signature**

```ts
declare const getPart: { (part: keyof DateTime.PartsWithWeekday): (self: DateTime) => number; (self: DateTime, part: keyof DateTime.PartsWithWeekday): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1653)

Since v3.6.0
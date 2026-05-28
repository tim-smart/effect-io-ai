Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.getPartUtc

Gets one UTC part of a `DateTime` as a number.

**Details**

The part will be in the UTC time zone.

**Example** (Reading UTC DateTime parts by key)

```ts
import { DateTime } from "effect"

const dateTime = DateTime.makeUnsafe({ year: 2024 })
const year = DateTime.getPartUtc(dateTime, "year")
console.log(year) // 2024
```

**Signature**

```ts
declare const getPartUtc: { (part: keyof DateTime.PartsWithWeekday): (self: DateTime) => number; (self: DateTime, part: keyof DateTime.PartsWithWeekday): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1774)

Since v3.6.0
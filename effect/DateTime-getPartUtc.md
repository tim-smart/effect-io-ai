Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.getPartUtc

Get a part of a `DateTime` as a number.

The part will be in the UTC time zone.

**Example**

```ts
import * as assert from "node:assert"
import { DateTime } from "effect"

const now = DateTime.unsafeMake({ year: 2024 })
const year = DateTime.getPartUtc(now, "year")
assert.strictEqual(year, 2024)
```

**Signature**

```ts
declare const getPartUtc: { (part: keyof DateTime.PartsWithWeekday): (self: DateTime) => number; (self: DateTime, part: keyof DateTime.PartsWithWeekday): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L932)

Since v3.6.0
## getPart

Get a part of a `DateTime` as a number.

The part will be time zone adjusted.

**Example**

```ts
import * as assert from "node:assert"
import { DateTime } from "effect"

const now = DateTime.unsafeMakeZoned({ year: 2024 }, { timeZone: "Europe/London" })
const year = DateTime.getPart(now, "year")
assert.strictEqual(year, 2024)
```

**Signature**

```ts
declare const getPart: { (part: keyof DateTime.PartsWithWeekday): (self: DateTime) => number; (self: DateTime, part: keyof DateTime.PartsWithWeekday): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L938)

Since v3.6.0
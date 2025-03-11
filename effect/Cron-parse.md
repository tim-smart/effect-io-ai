## parse

Parses a cron expression into a `Cron` instance.

**Example**

```ts
import * as assert from "node:assert"
import { Cron, Either } from "effect"

// At 04:00 on every day-of-month from 8 through 14.
assert.deepStrictEqual(Cron.parse("0 0 4 8-14 * *"), Either.right(Cron.make({
  seconds: [0],
  minutes: [0],
  hours: [4],
  days: [8, 9, 10, 11, 12, 13, 14],
  months: [],
  weekdays: []
})))
```

**Signature**

```ts
declare const parse: (cron: string, tz?: DateTime.TimeZone | string) => Either.Either<Cron, ParseError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L242)

Since v2.0.0
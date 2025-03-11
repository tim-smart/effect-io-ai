## match

Checks if a given `Date` falls within an active `Cron` time window.

**Throws**

`IllegalArgumentException` if the given `DateTime.Input` is invalid.

**Example**

```ts
import * as assert from "node:assert"
import { Cron, Either } from "effect"

const cron = Either.getOrThrow(Cron.parse("0 4 8-14 * *"))
assert.deepStrictEqual(Cron.match(cron, new Date("2021-01-08 04:00:00")), true)
assert.deepStrictEqual(Cron.match(cron, new Date("2021-01-08 05:00:00")), false)
```

**Signature**

```ts
declare const match: (cron: Cron, date: DateTime.DateTime.Input) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L337)

Since v2.0.0
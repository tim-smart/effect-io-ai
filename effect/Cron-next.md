## next

Returns the next run `Date` for the given `Cron` instance.

Uses the current time as a starting point if no value is provided for `now`.

**Throws**

`IllegalArgumentException` if the given `DateTime.Input` is invalid.
`Error` if the next run date cannot be found within 10,000 iterations.

**Example**

```ts
import * as assert from "node:assert"
import { Cron, Either } from "effect"

const after = new Date("2021-01-01 00:00:00")
const cron = Either.getOrThrow(Cron.parse("0 4 8-14 * *"))
assert.deepStrictEqual(Cron.next(cron, after), new Date("2021-01-08 04:00:00"))
```

**Signature**

```ts
declare const next: (cron: Cron, startFrom?: DateTime.DateTime.Input) => Date
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L396)

Since v2.0.0
Package: `effect`<br />
Module: `Cron`<br />

## Cron.prev

Returns the previous run `Date` for the given `Cron` instance.

Uses the current time as a starting point if no value is provided for `startFrom`.

**Throws**

`IllegalArgumentException` if the given `DateTime.Input` is invalid.
`Error` if the previous run date cannot be found within 10,000 iterations.

**Example**

```ts
import * as assert from "node:assert"
import { Cron, Either } from "effect"

const before = new Date("2021-01-15 00:00:00")
const cron = Either.getOrThrow(Cron.parse("0 4 8-14 * *"))
assert.deepStrictEqual(Cron.prev(cron, before), new Date("2021-01-14 04:00:00"))
```

**Signature**

```ts
declare const prev: (cron: Cron, startFrom?: DateTime.DateTime.Input) => Date
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L471)

Since v3.20.0
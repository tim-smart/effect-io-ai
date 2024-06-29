# match

Checks if a given `Date` falls within an active `Cron` time window.

To import and use `match` from the "Cron" module:

```ts
import * as Cron from "effect/Cron"
// Can be accessed like this
Cron.match
```

**Example**

```ts
import { Cron, Either } from "effect"

const cron = Either.getOrThrow(Cron.parse("0 4 8-14 * *"))
assert.deepStrictEqual(Cron.match(cron, new Date("2021-01-08 04:00:00")), true)
assert.deepStrictEqual(Cron.match(cron, new Date("2021-01-08 05:00:00")), false)
```

**Signature**

```ts
export declare const match: (cron: Cron, date: Date) => boolean
```

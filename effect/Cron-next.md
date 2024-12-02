# next

Returns the next run `Date` for the given `Cron` instance.

Uses the current time as a starting point if no value is provided for `now`.

To import and use `next` from the "Cron" module:

ts
import \* as Cron from "effect/Cron"
// Can be accessed like this
Cron.next
undefined

**Example**

```ts
import { Cron, Either } from "effect"

const after = new Date("2021-01-01 00:00:00")
const cron = Either.getOrThrow(Cron.parse("0 4 8-14 * *"))
assert.deepStrictEqual(Cron.next(cron, after), new Date("2021-01-08 04:00:00"))
```

**Signature**

```ts
export declare const next: (cron: Cron, now?: DateTime.DateTime.Input) => Date
```

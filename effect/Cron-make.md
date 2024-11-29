# make

Creates a `Cron` instance from.

To import and use `make` from the "Cron" module:

ts
import \* as Cron from "effect/Cron"
// Can be accessed like this
Cron.make
undefined

**Signature**

```ts
export declare const make: ({
  days,
  hours,
  minutes,
  months,
  weekdays
}: {
  readonly minutes: Iterable<number>
  readonly hours: Iterable<number>
  readonly days: Iterable<number>
  readonly months: Iterable<number>
  readonly weekdays: Iterable<number>
}) => Cron
```

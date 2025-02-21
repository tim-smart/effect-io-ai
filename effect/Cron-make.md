# make

Creates a `Cron` instance.

To import and use `make` from the "Cron" module:

```ts
import * as Cron from "effect/Cron"
// Can be accessed like this
Cron.make
```

**Signature**

```ts
export declare const make: (values: {
  readonly seconds?: Iterable<number> | undefined
  readonly minutes: Iterable<number>
  readonly hours: Iterable<number>
  readonly days: Iterable<number>
  readonly months: Iterable<number>
  readonly weekdays: Iterable<number>
  readonly tz?: DateTime.TimeZone | undefined
}) => Cron
```

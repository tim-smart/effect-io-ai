# make

Constructs a new interval from the two specified endpoints. If the start
endpoint greater than the end endpoint, then a zero size interval will be
returned.

To import and use `make` from the "ScheduleInterval" module:

```ts
import * as ScheduleInterval from '@effect/io/ScheduleInterval'

// Can be accessed like this
ScheduleInterval.make
```

**Signature**

```ts
export declare const make: (startMillis: number, endMillis: number) => Interval
```

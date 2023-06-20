# make

Constructs a new interval from the two specified endpoints. If the start
endpoint greater than the end endpoint, then a zero size interval will be
returned.

To import and use `make` from the "Interval" module:

```ts
import * as Interval from '@effect/io/Schedule/Interval'

// Can be accessed like this
Interval.make
```

**Signature**

```ts
export declare const make: (startMillis: number, endMillis: number) => Interval
```

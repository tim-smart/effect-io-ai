# make

Constructs a new interval from the two specified endpoints. If the start
endpoint greater than the end endpoint, then a zero size interval will be
returned.

Part of the `Interval` module, imported from `@effect/io/Schedule/Interval`.

**Signature**

```ts
export declare const make: (startMillis: number, endMillis: number) => Interval
```

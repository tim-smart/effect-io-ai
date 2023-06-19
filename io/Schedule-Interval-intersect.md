# intersect

Computes a new `Interval` which is the intersection of this `Interval` and
that `Interval`.

Part of the `Interval` module, imported from `@effect/io/Schedule/Interval`.

**Signature**

```ts
export declare const intersect: {
  (that: Interval): (self: Interval) => Interval
  (self: Interval, that: Interval): Interval
}
```

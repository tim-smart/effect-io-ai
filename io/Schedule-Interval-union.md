# union

Computes a new `Interval` which is the union of this `Interval` and that
`Interval` as a `Some`, otherwise returns `None` if the two intervals cannot
form a union.

Part of the `Interval` module, imported from `@effect/io/Schedule/Interval`.

**Signature**

```ts
export declare const union: {
  (that: Interval): (self: Interval) => Option.Option<Interval>
  (self: Interval, that: Interval): Option.Option<Interval>
}
```

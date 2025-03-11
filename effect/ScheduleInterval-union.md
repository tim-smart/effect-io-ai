## union

Computes a new `Interval` which is the union of this `Interval` and that
`Interval` as a `Some`, otherwise returns `None` if the two intervals cannot
form a union.

**Signature**

```ts
declare const union: { (that: Interval): (self: Interval) => Option.Option<Interval>; (self: Interval, that: Interval): Option.Option<Interval>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScheduleInterval.ts#L130)

Since v2.0.0
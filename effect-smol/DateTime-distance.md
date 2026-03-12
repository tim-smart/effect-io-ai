Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.distance

Calulate the difference between two `DateTime` values, returning a
`Duration` representing the amount of time between them.

If `other` is *after* `self`, the result will be a positive `Duration`. If
`other` is *before* `self`, the result will be a negative `Duration`. If they
are equal, the result will be a `Duration` of zero.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  const now = yield* DateTime.now
  const other = DateTime.add(now, { minutes: 1 })

  // returns Duration.minutes(1)
  DateTime.distance(now, other)
})
```

**Signature**

```ts
declare const distance: { (other: DateTime): (self: DateTime) => Duration.Duration; (self: DateTime, other: DateTime): Duration.Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L947)

Since v3.6.0
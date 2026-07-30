Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.distance

Calulate the difference between two `DateTime` values, returning the number
of milliseconds the `other` DateTime is from `self`.

If `other` is *after* `self`, the result will be a positive number.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  const other = DateTime.add(now, { minutes: 1 })

  // returns 60000
  DateTime.distance(now, other)
})
```

**Signature**

```ts
declare const distance: { (other: DateTime): (self: DateTime) => number; (self: DateTime, other: DateTime): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L748)

Since v3.6.0
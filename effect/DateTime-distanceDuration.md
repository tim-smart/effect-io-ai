Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.distanceDuration

Calulate the distance between two `DateTime` values.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  const other = DateTime.add(now, { minutes: 1 })

  // returns Duration.minutes(1)
  DateTime.distanceDuration(now, other)
})
```

**Signature**

```ts
declare const distanceDuration: { (other: DateTime): (self: DateTime) => Duration.Duration; (self: DateTime, other: DateTime): Duration.Duration; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L803)

Since v3.6.0
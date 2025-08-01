Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.distanceDurationEither

Calulate the difference between two `DateTime` values.

If the `other` DateTime is before `self`, the result will be a negative
`Duration`, returned as a `Left`.

If the `other` DateTime is after `self`, the result will be a positive
`Duration`, returned as a `Right`.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  const other = DateTime.add(now, { minutes: 1 })

  // returns Either.right(Duration.minutes(1))
  DateTime.distanceDurationEither(now, other)

  // returns Either.left(Duration.minutes(1))
  DateTime.distanceDurationEither(other, now)
})
```

**Signature**

```ts
declare const distanceDurationEither: { (other: DateTime): (self: DateTime) => Either.Either<Duration.Duration, Duration.Duration>; (self: DateTime, other: DateTime): Either.Either<Duration.Duration, Duration.Duration>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L780)

Since v3.6.0
# distanceDurationEither

Calulate the difference between two `DateTime` values.

If the `other` DateTime is before `self`, the result will be a negative
`Duration`, returned as a `Left`.

If the `other` DateTime is after `self`, the result will be a positive
`Duration`, returned as a `Right`.

To import and use `distanceDurationEither` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.distanceDurationEither
undefined

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
export declare const distanceDurationEither: {
  (other: DateTime): (self: DateTime) => Either.Either<Duration.Duration, Duration.Duration>
  (self: DateTime, other: DateTime): Either.Either<Duration.Duration, Duration.Duration>
}
```

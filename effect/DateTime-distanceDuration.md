# distanceDuration

Calulate the distance between two `DateTime` values.

To import and use `distanceDuration` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.distanceDuration
undefined

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
export declare const distanceDuration: {
  (other: DateTime): (self: DateTime) => Duration.Duration
  (self: DateTime, other: DateTime): Duration.Duration
}
```

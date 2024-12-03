# withCurrentZone

Provide the `CurrentTimeZone` to an effect.

To import and use `withCurrentZone` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.withCurrentZone
```

**Example**

```ts
import { DateTime, Effect } from "effect"

const zone = DateTime.zoneUnsafeMakeNamed("Europe/London")

Effect.gen(function* () {
  const now = yield* DateTime.nowInCurrentZone
}).pipe(DateTime.withCurrentZone(zone))
```

**Signature**

```ts
export declare const withCurrentZone: {
  (zone: TimeZone): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>
  <A, E, R>(effect: Effect.Effect<A, E, R>, zone: TimeZone): Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>
}
```

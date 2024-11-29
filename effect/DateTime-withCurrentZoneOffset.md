# withCurrentZoneOffset

Provide the `CurrentTimeZone` to an effect, using a offset.

To import and use `withCurrentZoneOffset` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.withCurrentZoneOffset
undefined

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  // will use the system's local time zone
  const now = yield* DateTime.nowInCurrentZone
}).pipe(DateTime.withCurrentZoneOffset(3 * 60 * 60 * 1000))
```

**Signature**

```ts
export declare const withCurrentZoneOffset: {
  (offset: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>
  <A, E, R>(effect: Effect.Effect<A, E, R>, offset: number): Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>
}
```

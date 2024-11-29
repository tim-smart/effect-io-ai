# withCurrentZoneLocal

Provide the `CurrentTimeZone` to an effect, using the system's local time
zone.

To import and use `withCurrentZoneLocal` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.withCurrentZoneLocal
undefined

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  // will use the system's local time zone
  const now = yield* DateTime.nowInCurrentZone
}).pipe(DateTime.withCurrentZoneLocal)
```

**Signature**

```ts
export declare const withCurrentZoneLocal: <A, E, R>(
  effect: Effect.Effect<A, E, R>
) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>
```

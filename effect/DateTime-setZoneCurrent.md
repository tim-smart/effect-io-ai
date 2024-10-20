# setZoneCurrent

Set the time zone of a `DateTime` to the current time zone, which is
determined by the `CurrentTimeZone` service.

To import and use `setZoneCurrent` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setZoneCurrent
```

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now

  // set the time zone to "Europe/London"
  const zoned = yield* DateTime.setZoneCurrent(now)
}).pipe(DateTime.withCurrentZoneNamed("Europe/London"))
```

**Signature**

```ts
export declare const setZoneCurrent: (self: DateTime) => Effect.Effect<Zoned, never, CurrentTimeZone>
```

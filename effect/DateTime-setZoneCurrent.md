## setZoneCurrent

Set the time zone of a `DateTime` to the current time zone, which is
determined by the `CurrentTimeZone` service.

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
declare const setZoneCurrent: (self: DateTime) => Effect.Effect<Zoned, never, CurrentTimeZone>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L995)

Since v3.6.0
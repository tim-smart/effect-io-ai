Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withCurrentZoneLocal

Provides the `CurrentTimeZone` to an effect, using the system's local time
zone.

**Example** (Providing the local time zone)

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  // will use the system's local time zone
  const now = yield* DateTime.nowInCurrentZone
}).pipe(DateTime.withCurrentZoneLocal)
```

**Signature**

```ts
declare const withCurrentZoneLocal: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1997)

Since v3.6.0
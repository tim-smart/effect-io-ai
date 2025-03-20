Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withCurrentZone

Provide the `CurrentTimeZone` to an effect.

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
declare const withCurrentZone: { (zone: TimeZone): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>; <A, E, R>(effect: Effect.Effect<A, E, R>, zone: TimeZone): Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1030)

Since v3.6.0
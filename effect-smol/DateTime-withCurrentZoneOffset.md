Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withCurrentZoneOffset

Provide the `CurrentTimeZone` to an effect, using a offset.

**Example** (Providing a fixed-offset time zone)

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  const zone = yield* DateTime.CurrentTimeZone
  console.log(DateTime.zoneToString(zone)) // "+03:00"
}).pipe(DateTime.withCurrentZoneOffset(3 * 60 * 60 * 1000))
```

**Signature**

```ts
declare const withCurrentZoneOffset: { (offset: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>; <A, E, R>(effect: Effect.Effect<A, E, R>, offset: number): Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1836)

Since v3.6.0
Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.withCurrentZoneNamed

Provide the `CurrentTimeZone` to an effect using an IANA time zone
identifier.

If the time zone is invalid, it will fail with an `IllegalArgumentException`.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  // will use the "Europe/London" time zone
  const now = yield* DateTime.nowInCurrentZone
}).pipe(DateTime.withCurrentZoneNamed("Europe/London"))
```

**Signature**

```ts
declare const withCurrentZoneNamed: { (zone: string): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E | IllegalArgumentException, Exclude<R, CurrentTimeZone>>; <A, E, R>(effect: Effect.Effect<A, E, R>, zone: string): Effect.Effect<A, E | IllegalArgumentException, Exclude<R, CurrentTimeZone>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1180)

Since v3.6.0
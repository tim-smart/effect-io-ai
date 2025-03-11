## withCurrentZoneOffset

Provide the `CurrentTimeZone` to an effect, using a offset.

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
declare const withCurrentZoneOffset: { (offset: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>; <A, E, R>(effect: Effect.Effect<A, E, R>, offset: number): Effect.Effect<A, E, Exclude<R, CurrentTimeZone>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1063)

Since v3.6.0
## nowInCurrentZone

Get the current time as a `DateTime.Zoned`, using the `CurrentTimeZone`.

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
declare const nowInCurrentZone: Effect.Effect<Zoned, never, CurrentTimeZone>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1124)

Since v3.6.0
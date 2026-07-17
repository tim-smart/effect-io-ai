Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamedEffect

Creates a named time zone effectfully from an IANA time zone identifier.

**When to use**

Use when invalid IANA zone ids should fail in the Effect error channel
instead of returning `Option.none` or throwing.

**Example** (Creating named time zones effectfully)

```ts
import { DateTime, Effect } from "effect"

const program = Effect.gen(function*() {
  const zone = yield* DateTime.zoneMakeNamedEffect("Europe/London")
  const now = yield* DateTime.now
  return DateTime.setZone(now, zone)
})
```

**Signature**

```ts
declare const zoneMakeNamedEffect: (zoneId: string) => Effect.Effect<TimeZone.Named, IllegalArgumentError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1090)

Since v3.6.0
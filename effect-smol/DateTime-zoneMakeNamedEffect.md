Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamedEffect

Create a named time zone from a IANA time zone identifier.

If the time zone is invalid, it will fail with an `IllegalArgumentError`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L799)

Since v3.6.0
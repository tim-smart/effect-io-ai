Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.layerCurrentZoneLocal

Create a Layer from the system's local time zone.

This layer provides the `CurrentTimeZone` service using the system's
configured local time zone.

**Example**

```ts
import { DateTime, Effect } from "effect"

const program = Effect.gen(function*() {
  const now = yield* DateTime.nowInCurrentZone
  return DateTime.formatIsoZoned(now)
})

// Use the system's local time zone
Effect.provide(program, DateTime.layerCurrentZoneLocal)
```

**Signature**

```ts
declare const layerCurrentZoneLocal: Layer.Layer<CurrentTimeZone, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2404)

Since v3.6.0
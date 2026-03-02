Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.layerCurrentZone

Create a Layer from the given time zone.

This layer provides the `CurrentTimeZone` service with the specified time zone.

**Example**

```ts
import { DateTime, Effect } from "effect"

const zone = DateTime.zoneMakeNamedUnsafe("Europe/London")
const layer = DateTime.layerCurrentZone(zone)

const program = Effect.gen(function*() {
  const now = yield* DateTime.nowInCurrentZone
  return DateTime.formatIsoZoned(now)
})

// Use the layer to provide the time zone
Effect.provide(program, layer)
```

**Signature**

```ts
declare const layerCurrentZone: (resource: NoInfer<TimeZone>) => Layer.Layer<CurrentTimeZone>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2365)

Since v3.6.0
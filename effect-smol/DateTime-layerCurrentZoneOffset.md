Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.layerCurrentZoneOffset

Create a Layer from the given time zone offset.

This layer provides the `CurrentTimeZone` service with a fixed offset time zone.

**Example**

```ts
import { DateTime, Effect } from "effect"

// Create a layer for UTC+3
const layer = DateTime.layerCurrentZoneOffset(3 * 60 * 60 * 1000)

const program = Effect.gen(function*() {
  const now = yield* DateTime.nowInCurrentZone
  return DateTime.formatIsoZoned(now)
})

Effect.provide(program, layer)
```

**Signature**

```ts
declare const layerCurrentZoneOffset: (offset: number) => Layer.Layer<CurrentTimeZone>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2392)

Since v3.6.0
Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.layerCurrentZoneNamed

Create a Layer from the given IANA time zone identifier.

This layer provides the `CurrentTimeZone` service with a named time zone.
If the time zone identifier is invalid, the layer will fail.

**Example**

```ts
import { DateTime, Effect } from "effect"

const layer = DateTime.layerCurrentZoneNamed("Europe/London")

const program = Effect.gen(function*() {
  const now = yield* DateTime.nowInCurrentZone
  return DateTime.formatIsoZoned(now)
})

Effect.provide(program, layer)
```

**Signature**

```ts
declare const layerCurrentZoneNamed: (zoneId: string) => Layer.Layer<CurrentTimeZone, IllegalArgumentError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2376)

Since v3.6.0
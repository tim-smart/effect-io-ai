Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.CurrentTimeZone

Context service that supplies the ambient `TimeZone` for APIs that work in
the current zone, such as `DateTime.setZoneCurrent` and
`DateTime.nowInCurrentZone`.

Provide it with `DateTime.withCurrentZone`, one of the `withCurrentZone*`
helpers, or one of the `layerCurrentZone*` layers.

**Example** (Accessing the current time zone service)

```ts
import { DateTime, Effect } from "effect"

const program = Effect.gen(function*() {
  // Access the current time zone service
  const zone = yield* DateTime.CurrentTimeZone
  console.log(DateTime.zoneToString(zone))
})

// Provide a time zone
const layer = DateTime.layerCurrentZoneNamed("Europe/London")
Effect.provide(program, layer)
```

**Signature**

```ts
declare class CurrentTimeZone
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1744)

Since v3.11.0
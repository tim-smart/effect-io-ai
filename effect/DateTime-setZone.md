Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.setZone

Set the time zone of a `DateTime`, returning a new `DateTime.Zoned`.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  const zone = DateTime.zoneUnsafeMakeNamed("Europe/London")

  // set the time zone
  const zoned: DateTime.Zoned = DateTime.setZone(now, zone)
})
```

**Signature**

```ts
declare const setZone: { (zone: TimeZone, options?: { readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }): (self: DateTime) => Zoned; (self: DateTime, zone: TimeZone, options?: { readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }): Zoned; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L555)

Since v3.6.0
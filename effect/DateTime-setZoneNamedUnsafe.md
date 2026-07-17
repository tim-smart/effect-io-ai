Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.setZoneNamedUnsafe

Sets the time zone of a `DateTime` from an IANA time zone identifier. If the
time zone is invalid, an `IllegalArgumentError` will be thrown.

**Example** (Setting named time zones unsafely)

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  const now = yield* DateTime.now
  // set the time zone
  DateTime.setZoneNamedUnsafe(now, "Europe/London")
})
```

**Signature**

```ts
declare const setZoneNamedUnsafe: { (zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }): (self: DateTime) => Zoned; (self: DateTime, zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }): Zoned; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1210)

Since v4.0.0
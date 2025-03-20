Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.unsafeSetZoneNamed

Set the time zone of a `DateTime` from an IANA time zone identifier. If the
time zone is invalid, an `IllegalArgumentException` will be thrown.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  // set the time zone
  DateTime.unsafeSetZoneNamed(now, "Europe/London")
})
```

**Signature**

```ts
declare const unsafeSetZoneNamed: { (zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; }): (self: DateTime) => Zoned; (self: DateTime, zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; }): Zoned; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L642)

Since v3.6.0
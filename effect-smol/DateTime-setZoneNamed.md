Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.setZoneNamed

Set the time zone of a `DateTime` from an IANA time zone identifier. If the
time zone is invalid, `None` will be returned.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  const now = yield* DateTime.now
  // set the time zone, returns an Option
  DateTime.setZoneNamed(now, "Europe/London")
})
```

**Signature**

```ts
declare const setZoneNamed: { (zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }): (self: DateTime) => Zoned | undefined; (self: DateTime, zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }): Zoned | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L923)

Since v3.6.0
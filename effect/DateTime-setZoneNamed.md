## setZoneNamed

Set the time zone of a `DateTime` from an IANA time zone identifier. If the
time zone is invalid, `None` will be returned.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
  // set the time zone, returns an Option
  DateTime.setZoneNamed(now, "Europe/London")
})
```

**Signature**

```ts
declare const setZoneNamed: { (zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; }): (self: DateTime) => Option.Option<Zoned>; (self: DateTime, zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined; }): Option.Option<Zoned>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L600)

Since v3.6.0
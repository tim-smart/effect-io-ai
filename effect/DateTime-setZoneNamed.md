# setZoneNamed

Set the time zone of a `DateTime` from an IANA time zone identifier. If the
time zone is invalid, `None` will be returned.

To import and use `setZoneNamed` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setZoneNamed
```

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
export declare const setZoneNamed: {
  (
    zoneId: string,
    options?: { readonly adjustForTimeZone?: boolean | undefined }
  ): (self: DateTime) => Option.Option<Zoned>
  (self: DateTime, zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined }): Option.Option<Zoned>
}
```

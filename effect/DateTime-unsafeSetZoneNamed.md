# unsafeSetZoneNamed

Set the time zone of a `DateTime` from an IANA time zone identifier. If the
time zone is invalid, an `IllegalArgumentException` will be thrown.

To import and use `unsafeSetZoneNamed` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.unsafeSetZoneNamed
undefined

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
export declare const unsafeSetZoneNamed: {
  (zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined }): (self: DateTime) => Zoned
  (self: DateTime, zoneId: string, options?: { readonly adjustForTimeZone?: boolean | undefined }): Zoned
}
```

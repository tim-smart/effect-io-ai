# setZone

Set the time zone of a `DateTime`, returning a new `DateTime.Zoned`.

To import and use `setZone` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setZone
undefined

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
export declare const setZone: {
  (zone: TimeZone, options?: { readonly adjustForTimeZone?: boolean | undefined }): (self: DateTime) => Zoned
  (self: DateTime, zone: TimeZone, options?: { readonly adjustForTimeZone?: boolean | undefined }): Zoned
}
```

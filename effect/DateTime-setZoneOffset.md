# setZoneOffset

Add a fixed offset time zone to a `DateTime`.

The offset is in milliseconds.

To import and use `setZoneOffset` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setZoneOffset
```

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now

  // set the offset time zone in milliseconds
  const zoned: DateTime.Zoned = DateTime.setZoneOffset(now, 3 * 60 * 60 * 1000)
})
```

**Signature**

```ts
export declare const setZoneOffset: {
  (offset: number, options?: { readonly adjustForTimeZone?: boolean | undefined }): (self: DateTime) => Zoned
  (self: DateTime, offset: number, options?: { readonly adjustForTimeZone?: boolean | undefined }): Zoned
}
```

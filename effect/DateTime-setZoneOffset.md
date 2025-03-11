## setZoneOffset

Add a fixed offset time zone to a `DateTime`.

The offset is in milliseconds.

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
declare const setZoneOffset: { (offset: number, options?: { readonly adjustForTimeZone?: boolean | undefined; }): (self: DateTime) => Zoned; (self: DateTime, offset: number, options?: { readonly adjustForTimeZone?: boolean | undefined; }): Zoned; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L503)

Since v3.6.0
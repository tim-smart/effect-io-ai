Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamedUnsafe

Attempts to create a named time zone from an IANA time zone identifier.

**When to use**

Use when the IANA zone id is trusted and invalid zones should throw instead
of returning `Option.none` or failing in `Effect`.

**Details**

If the time zone is invalid, an `IllegalArgumentError` will be thrown.

**Example** (Creating named time zones unsafely)

```ts
import { DateTime } from "effect"

const londonZone = DateTime.zoneMakeNamedUnsafe("Europe/London")
console.log(DateTime.zoneToString(londonZone)) // "Europe/London"

const tokyoZone = DateTime.zoneMakeNamedUnsafe("Asia/Tokyo")
console.log(DateTime.zoneToString(tokyoZone)) // "Asia/Tokyo"

// This would throw an IllegalArgumentError:
// DateTime.zoneMakeNamedUnsafe("Invalid/Zone")
```

**Signature**

```ts
declare const zoneMakeNamedUnsafe: (zoneId: string) => TimeZone.Named
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1015)

Since v4.0.0
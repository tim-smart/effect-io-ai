Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamedUnsafe

Attempt to create a named time zone from a IANA time zone identifier.

If the time zone is invalid, an `IllegalArgumentError` will be thrown.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L733)

Since v3.6.0
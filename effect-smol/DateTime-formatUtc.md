Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatUtc

Format a `DateTime` as a string using the `DateTimeFormat` API.

This forces the time zone to be UTC.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeZonedUnsafe("2024-06-15T14:30:00Z", {
  timeZone: "Europe/London"
})

// Force UTC formatting regardless of time zone
const utcFormatted = DateTime.formatUtc(dt, {
  year: "numeric",
  month: "2-digit",
  day: "2-digit",
  hour: "2-digit",
  minute: "2-digit",
  timeZoneName: "short"
})

console.log(utcFormatted) // "06/15/2024, 02:30 PM UTC"
```

**Signature**

```ts
declare const formatUtc: { (options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): (self: DateTime) => string; (self: DateTime, options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2128)

Since v3.6.0
Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.format

Format a `DateTime` as a string using the `DateTimeFormat` API.

The `timeZone` option is set to the offset of the time zone.

Note: On Node versions < 22, fixed "Offset" zones will set the time zone to
"UTC" and use the adjusted `Date`.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeZonedUnsafe("2024-06-15T14:30:00Z", {
  timeZone: "Europe/London"
})

const formatted = DateTime.format(dt, {
  dateStyle: "full",
  timeStyle: "short",
  locale: "en-US"
})

console.log(formatted) // "Saturday, June 15, 2024 at 3:30 PM"
```

**Signature**

```ts
declare const format: { (options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): (self: DateTime) => string; (self: DateTime, options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2079)

Since v3.6.0
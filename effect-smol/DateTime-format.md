Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.format

Formats a `DateTime` with `Intl.DateTimeFormat`.

Unless a `timeZone` option is supplied, UTC values are formatted in UTC and
zoned values are formatted in their named zone or fixed-offset zone.

Fixed-offset zones depend on runtime support for offset `timeZone`
identifiers. When unsupported, formatting falls back to UTC with the
`DateTime` adjusted to the offset.

**Example** (Formatting DateTime values with Intl options)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2319)

Since v3.6.0
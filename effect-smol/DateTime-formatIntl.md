Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIntl

Formats a `DateTime` as a string using the `Intl.DateTimeFormat` API.

**When to use**

Use when you already have an `Intl.DateTimeFormat` and want it to control the
locale, time zone, and formatting options.

**Details**

The formatter receives the `DateTime` epoch milliseconds. Any time zone
conversion comes from the supplied formatter.

**Example** (Formatting DateTime values with custom formatters)

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-06-15T14:30:00Z")

// Create a custom formatter
const formatter = new Intl.DateTimeFormat("de-DE", {
  year: "numeric",
  month: "long",
  day: "numeric",
  hour: "2-digit",
  minute: "2-digit",
  timeZone: "Europe/Berlin"
})

const formatted = DateTime.formatIntl(dt, formatter)
console.log(formatted.length > 0) // true
```

**See**

- `formatUtc` for formatting with options forced to UTC
- `formatIso` for stable ISO formatting

**Signature**

```ts
declare const formatIntl: { (format: Intl.DateTimeFormat): (self: DateTime) => string; (self: DateTime, format: Intl.DateTimeFormat): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2664)

Since v3.6.0
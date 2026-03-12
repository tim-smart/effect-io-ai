Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatIntl

Format a `DateTime` as a string using the `DateTimeFormat` API.

**Example**

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
console.log(formatted) // "15. Juni 2024, 16:30"
```

**Signature**

```ts
declare const formatIntl: { (format: Intl.DateTimeFormat): (self: DateTime) => string; (self: DateTime, format: Intl.DateTimeFormat): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2172)

Since v3.6.0
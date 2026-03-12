Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatLocal

Format a `DateTime` as a string using the `DateTimeFormat` API.

It will use the system's local time zone & locale.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-06-15T14:30:00Z")

// Uses system local time zone and locale
const local = DateTime.formatLocal(dt, {
  year: "numeric",
  month: "long",
  day: "numeric",
  hour: "2-digit",
  minute: "2-digit"
})

console.log(local) // Output depends on system locale/timezone
```

**Signature**

```ts
declare const formatLocal: { (options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): (self: DateTime) => string; (self: DateTime, options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2081)

Since v3.6.0
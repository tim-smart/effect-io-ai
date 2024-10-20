# formatUtc

Format a `DateTime` as a string using the `DateTimeFormat` API.

This forces the time zone to be UTC.

To import and use `formatUtc` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.formatUtc
```

**Signature**

```ts
export declare const formatUtc: {
  (
    options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined }) | undefined
  ): (self: DateTime) => string
  (
    self: DateTime,
    options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined }) | undefined
  ): string
}
```

# formatLocal

Format a `DateTime` as a string using the `DateTimeFormat` API.

It will use the system's local time zone & locale.

To import and use `formatLocal` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.formatLocal
```

**Signature**

```ts
export declare const formatLocal: {
  (
    options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined }) | undefined
  ): (self: DateTime) => string
  (
    self: DateTime,
    options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined }) | undefined
  ): string
}
```

# format

Format a `DateTime` as a string using the `DateTimeFormat` API.

The `timeZone` option is set to the offset of the time zone.

Note: On Node versions < 22, fixed "Offset" zones will set the time zone to
"UTC" and use the adjusted `Date`.

To import and use `format` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.format
undefined

**Signature**

```ts
export declare const format: {
  (
    options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined }) | undefined
  ): (self: DateTime) => string
  (
    self: DateTime,
    options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined }) | undefined
  ): string
}
```

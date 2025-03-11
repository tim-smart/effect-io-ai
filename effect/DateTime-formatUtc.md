## formatUtc

Format a `DateTime` as a string using the `DateTimeFormat` API.

This forces the time zone to be UTC.

**Signature**

```ts
declare const formatUtc: { (options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): (self: DateTime) => string; (self: DateTime, options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1480)

Since v3.6.0
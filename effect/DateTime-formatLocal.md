Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.formatLocal

Format a `DateTime` as a string using the `DateTimeFormat` API.

It will use the system's local time zone & locale.

**Signature**

```ts
declare const formatLocal: { (options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): (self: DateTime) => string; (self: DateTime, options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1454)

Since v3.6.0
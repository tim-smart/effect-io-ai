Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.format

Format a `DateTime` as a string using the `DateTimeFormat` API.

The `timeZone` option is set to the offset of the time zone.

Note: On Node versions < 22, fixed "Offset" zones will set the time zone to
"UTC" and use the adjusted `Date`.

**Signature**

```ts
declare const format: { (options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): (self: DateTime) => string; (self: DateTime, options?: (Intl.DateTimeFormatOptions & { readonly locale?: string | undefined; }) | undefined): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1444)

Since v3.6.0
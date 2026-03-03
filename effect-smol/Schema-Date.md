Package: `effect`<br />
Module: `Schema`<br />

## Schema.Date

A schema for JavaScript `Date` objects.

This schema accepts any `Date` instance, including invalid dates (e.g., `new
Date("invalid")`). For validating only valid dates, use `ValidDate` instead.

**Signature**

```ts
declare const Date: Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6840)

Since v4.0.0
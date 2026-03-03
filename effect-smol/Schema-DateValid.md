Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateValid

A schema for **valid** JavaScript `Date` objects.

This schema accepts `Date` instances but rejects invalid dates (such as `new
Date("invalid")`).

**Signature**

```ts
declare const DateValid: Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6876)

Since v4.0.0
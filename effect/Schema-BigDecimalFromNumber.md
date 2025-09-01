Package: `effect`<br />
Module: `Schema`<br />

## Schema.BigDecimalFromNumber

A schema that transforms a `number` into a `BigDecimal`.
When encoding, this Schema will produce incorrect results if the BigDecimal exceeds the 64-bit range of a number.

**Signature**

```ts
declare class BigDecimalFromNumber
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7932)

Since v3.10.0
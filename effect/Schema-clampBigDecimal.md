## clampBigDecimal

Clamps a `BigDecimal` between a minimum and a maximum value.

**Signature**

```ts
declare const clampBigDecimal: (minimum: bigDecimal_.BigDecimal, maximum: bigDecimal_.BigDecimal) => <S extends Schema.Any, A extends bigDecimal_.BigDecimal>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, filter<SchemaClass<A>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8164)

Since v3.10.0
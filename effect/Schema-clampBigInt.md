Package: `effect`<br />
Module: `Schema`<br />

## Schema.clampBigInt

Clamps a bigint between a minimum and a maximum value.

**Signature**

```ts
declare const clampBigInt: (minimum: bigint, maximum: bigint) => <S extends Schema.Any, A extends bigint>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, filter<SchemaClass<A>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5672)

Since v3.10.0
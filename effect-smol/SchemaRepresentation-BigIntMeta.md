Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.BigIntMeta

Metadata union for bigint-specific validation checks (min, max, between).

**See**

- `BigInt`
- `Check`

**Signature**

```ts
type BigIntMeta = Schema.Annotations.BuiltInMetaDefinitions[
  | "isGreaterThanOrEqualToBigInt"
  | "isLessThanOrEqualToBigInt"
  | "isGreaterThanBigInt"
  | "isLessThanBigInt"
  | "isBetweenBigInt"
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L621)

Since v4.0.0
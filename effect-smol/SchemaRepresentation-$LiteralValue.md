Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$LiteralValue

Schema codec for the literal value types allowed in a `Literal` node
(string, finite number, boolean, or bigint).

**Signature**

```ts
declare const $LiteralValue: Schema.Union<readonly [Schema.String, Schema.Finite, Schema.Boolean, Schema.BigInt]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1198)

Since v4.0.0
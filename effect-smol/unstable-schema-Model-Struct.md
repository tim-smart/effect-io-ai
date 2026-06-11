Package: `effect`<br />
Module: `Model`<br />

## Model.Struct

Creates a variant struct from model field definitions.

**Signature**

```ts
declare const Struct: <const A extends VariantSchema.Struct.Fields>(fields: A & VariantSchema.Struct.Validate<A, "insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">) => VariantSchema.Struct<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L158)

Since v4.0.0
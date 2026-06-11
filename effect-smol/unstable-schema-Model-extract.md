Package: `effect`<br />
Module: `Model`<br />

## Model.extract

Extracts a generated variant schema from a model or variant struct.

**Signature**

```ts
declare const extract: { <V extends "insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">(variant: V): <A extends VariantSchema.Struct<any>>(self: A) => VariantSchema.Extract<V, A, V extends "select" ? true : false>; <V extends "insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select", A extends VariantSchema.Struct<any>>(self: A, variant: V): VariantSchema.Extract<V, A, V extends "select" ? true : false>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L122)

Since v4.0.0
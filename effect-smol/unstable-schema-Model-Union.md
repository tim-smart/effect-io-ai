Package: `effect`<br />
Module: `Model`<br />

## Model.Union

Creates a union over the default and generated variant schemas of multiple
variant structs.

**Signature**

```ts
declare const Union: <const Members extends ReadonlyArray<VariantSchema.Struct<any>>>(members: Members) => VariantSchema.Union<Members> & VariantSchema.Union.Variants<Members, "insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L175)

Since v4.0.0
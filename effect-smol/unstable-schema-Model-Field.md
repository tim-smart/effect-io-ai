Package: `effect`<br />
Module: `Model`<br />

## Model.Field

Creates a variant field from schemas keyed by variant name.

**Signature**

```ts
declare const Field: <const A extends VariantSchema.Field.ConfigWithKeys<"insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">>(config: A & { readonly [K in Exclude<keyof A, "insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">]: never; }) => VariantSchema.Field<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L138)

Since v4.0.0
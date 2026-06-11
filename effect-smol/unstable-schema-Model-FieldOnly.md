Package: `effect`<br />
Module: `Model`<br />

## Model.FieldOnly

Creates a variant field that applies a schema only to the supplied variants.

**Signature**

```ts
declare const FieldOnly: <const Keys extends ReadonlyArray<"insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">>(keys: Keys) => <S extends Schema.Top>(schema: S) => VariantSchema.Field<{ readonly [K in Keys[number]]: S; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L151)

Since v4.0.0
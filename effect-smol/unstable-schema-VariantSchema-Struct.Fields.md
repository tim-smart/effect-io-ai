Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Struct.Fields

Field map accepted by a variant struct, where each property may be a schema, a
variant field, a nested struct, or `undefined`.

**Signature**

```ts
type Fields = {
    readonly [key: string]:
      | Schema.Top
      | Field<any>
      | Struct<any>
      | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L85)

Since v4.0.0
Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Field.Fields

Field map whose properties may be schemas, variant fields, nested structs, or
`undefined`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/VariantSchema.ts#L157)

Since v4.0.0
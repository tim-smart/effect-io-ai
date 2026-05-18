Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Struct

Pipeable container of schema fields that can be extracted into per-variant
`Schema.Struct` schemas.

**Signature**

```ts
export interface Struct<in out A extends Field.Fields> extends Pipeable {
  readonly [TypeId]: A
  /** @internal */
  [cacheSymbol]?: Record<string, Schema.Top>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L49)

Since v4.0.0
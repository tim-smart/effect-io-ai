Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Struct.Validate

Type-level validation that every variant field in a struct only uses variants
from the configured variant set.

**Signature**

```ts
type Validate<A, Variant> = {
    readonly [K in keyof A]: A[K] extends { readonly [TypeId]: infer _ } ? Validate<A[K], Variant> :
      A[K] extends Field<infer Config> ? [keyof Config] extends [Variant] ? {} : "field must have valid variants"
      : {}
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/VariantSchema.ts#L87)

Since v4.0.0
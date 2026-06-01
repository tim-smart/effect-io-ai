Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.Iso

Computes the iso type for `StructWithRest` by intersecting the base object
schema's `Iso` type with the `Iso` types of all rest record schemas.

**Signature**

```ts
type Iso<S, Records> = Intersect<S, Records, "Iso">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3559)

Since v4.0.0
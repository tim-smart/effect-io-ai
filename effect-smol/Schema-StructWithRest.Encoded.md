Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.Encoded

Computes the encoded type for `StructWithRest` by intersecting the base object
schema's encoded type with the encoded types of all rest record schemas.

**Signature**

```ts
type Encoded<S, Records> = Intersect<S, Records, "Encoded">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3841)

Since v3.10.0
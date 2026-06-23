Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.Type

Computes the decoded type for `StructWithRest` by intersecting the base object
schema's decoded `Type` with the decoded types of all rest record schemas.

**Signature**

```ts
type Type<S, Records> = Intersect<S, Records, "Type">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3823)

Since v3.10.0
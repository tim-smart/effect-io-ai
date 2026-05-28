Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.Type

Computes the decoded type for `StructWithRest` by intersecting the base object
schema's decoded `Type` with the decoded types of all rest record schemas.

**Signature**

```ts
type Type<S, Records> = & S["Type"]
    & MergeTuple<{ readonly [K in keyof Records]: Records[K]["Type"] }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3438)

Since v3.10.0
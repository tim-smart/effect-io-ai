Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.MakeIn

Computes the input type accepted when constructing a `StructWithRest` value by
intersecting the base object's make input with the make inputs of all rest
record schemas.

**Signature**

```ts
type MakeIn<S, Records> = & S["~type.make"]
    & MergeTuple<{ readonly [K in keyof Records]: Records[K]["~type.make"] }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3448)

Since v4.0.0
Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.Iso

Computes the iso type for `StructWithRest` by intersecting the base object
schema's `Iso` type with the `Iso` types of all rest record schemas.

**Signature**

```ts
type Iso<S, Records> = & S["Iso"]
    & MergeTuple<{ readonly [K in keyof Records]: Records[K]["Iso"] }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3010)

Since v4.0.0
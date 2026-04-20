Package: `effect`<br />
Module: `Schema`<br />

## Schema.declareConstructor

The schema type returned by `declareConstructor`, tracking the decoded
type `T`, the encoded type `E`, and the list of type-parameter schemas
`TypeParameters`.

**Signature**

```ts
export interface declareConstructor<T, E, TypeParameters extends ReadonlyArray<Top>, Iso = T> extends
  Bottom<
    T,
    E,
    TypeParameters[number]["DecodingServices"],
    TypeParameters[number]["EncodingServices"],
    AST.Declaration,
    declareConstructor<T, E, TypeParameters, Iso>,
    T,
    Iso,
    TypeParameters
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L269)

Since v4.0.0
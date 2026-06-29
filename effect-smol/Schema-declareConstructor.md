Package: `effect`<br />
Module: `Schema`<br />

## Schema.declareConstructor

Type-level representation returned by `declareConstructor`.

**Signature**

```ts
export interface declareConstructor<T, E, TypeParameters extends ReadonlyArray<Constraint>, Iso = T> extends
  Bottom<
    T,
    E,
    TypeParameters[number]["DecodingServices"],
    TypeParameters[number]["EncodingServices"],
    SchemaAST.Declaration,
    declareConstructor<T, E, TypeParameters, Iso>,
    T,
    Iso,
    TypeParameters
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L311)

Since v4.0.0
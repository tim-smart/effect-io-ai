Package: `effect`<br />
Module: `Schema`<br />

## Schema.Top

The existential "any schema" type — all type parameters are erased to `unknown`.

Use `Top` as a constraint when writing generic utilities that must accept *any*
schema regardless of its `Type`, `Encoded`, or service requirements. It is the
widest possible schema type and therefore gives you the least static information.

In user code prefer the narrower interfaces:
- `Schema``<T>` — when you only care about the decoded type
- `Codec``<T, E, RD, RE>` — when you need the encoded type and service requirements
- `Decoder``<T, RD>` — for decode-only APIs
- `Encoder``<E, RE>` — for encode-only APIs

**Signature**

```ts
export interface Top extends
  Bottom<
    unknown,
    unknown,
    unknown,
    unknown,
    AST.AST,
    Top,
    unknown,
    unknown,
    any, // this is because TypeParameters is invariant
    unknown,
    Mutability,
    Optionality,
    ConstructorDefault,
    Mutability,
    Optionality
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L566)

Since v4.0.0
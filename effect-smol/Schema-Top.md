Package: `effect`<br />
Module: `Schema`<br />

## Schema.Top

The top (most general) type for all schema-like values in this module.

When to use:
- You are writing generic helpers and only need "some schema", without caring about its `Type` / `Encoded`.
- You need a common constraint for type-level utilities (for example in `Schema.Type` or `Codec.Encoded`).

Behavior:
- This is a *type-level* supertype; it does not represent a specific concrete schema.
- In user code, you usually want `Schema`, `Codec`, `Decoder`, or `Encoder` instead.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L304)

Since v4.0.0
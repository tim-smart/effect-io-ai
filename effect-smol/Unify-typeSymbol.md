Package: `effect`<br />
Module: `Unify`<br />

## Unify.typeSymbol

The type of the typeSymbol.

**When to use**

Use to reference the type information property key in type-level protocol
definitions.

**Details**

This type represents the unique symbol used for storing type information
in types that support unification. It's used in type-level operations
to access and manipulate type information.

**Signature**

```ts
type typeSymbol = typeof typeSymbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L114)

Since v2.0.0
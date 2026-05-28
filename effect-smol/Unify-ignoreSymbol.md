Package: `effect`<br />
Module: `Unify`<br />

## Unify.ignoreSymbol

The type of the ignoreSymbol.

**When to use**

Use to reference the ignored-property key in type-level protocol
definitions.

**Details**

This type represents the unique symbol used for marking types that should
be ignored during unification operations. It's used in type-level operations
to exclude specific types from the unification process.

**Signature**

```ts
type ignoreSymbol = typeof ignoreSymbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L153)

Since v2.0.0
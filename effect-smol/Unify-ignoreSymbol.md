Package: `effect`<br />
Module: `Unify`<br />

## Unify.ignoreSymbol

The type of the ignoreSymbol.

This type represents the unique symbol used for marking types that should
be ignored during unification operations. It's used in type-level operations
to exclude specific types from the unification process.

**Example**

```ts
import type { Unify } from "effect"

// The ignoreSymbol type is used in type declarations
// to mark types that should be ignored during unification
type IgnorableType = {
  [Unify.ignoreSymbol]?: unknown
}
```

**Signature**

```ts
type ignoreSymbol = typeof ignoreSymbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L141)

Since v2.0.0
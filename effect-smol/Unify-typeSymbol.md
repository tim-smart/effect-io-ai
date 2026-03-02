Package: `effect`<br />
Module: `Unify`<br />

## Unify.typeSymbol

The type of the typeSymbol.

This type represents the unique symbol used for storing type information
in types that support unification. It's used in type-level operations
to access and manipulate type information.

**Example**

```ts
import type { Unify } from "effect"

// The typeSymbol type is used in type declarations
// to store type information for unification
type TypedValue = {
  [Unify.typeSymbol]?: string
}
```

**Signature**

```ts
type typeSymbol = typeof typeSymbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L95)

Since v2.0.0
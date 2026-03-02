Package: `effect`<br />
Module: `Unify`<br />

## Unify.unifySymbol

The type of the unifySymbol.

This type represents the unique symbol used for identifying unification
behavior in Effect types. It's typically used in type-level operations
to enable automatic type unification.

**Example**

```ts
import type { Unify } from "effect"

// The unifySymbol type is used in type declarations
// to enable unification behavior
type UnifyableType = {
  [Unify.unifySymbol]?: any
}
```

**Signature**

```ts
type unifySymbol = typeof unifySymbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L50)

Since v2.0.0
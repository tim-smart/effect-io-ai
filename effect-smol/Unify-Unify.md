Package: `effect`<br />
Module: `Unify`<br />

## Unify.Unify

Unifies types that implement the unification protocol.

This type performs automatic type unification for types that contain
the unification symbols (`unifySymbol`, `typeSymbol`, `ignoreSymbol`).
It's primarily used internally by the Effect type system to handle
complex type unions and provide better type inference.

**Example**

```ts
import type * as Unify from "effect/Unify"

// Example of types that can be unified
type UnifiableA = {
  value: string
  [Unify.typeSymbol]?: string
  [Unify.unifySymbol]?: { String: () => string }
}

type UnifiableB = {
  value: number
  [Unify.typeSymbol]?: number
  [Unify.unifySymbol]?: { Number: () => number }
}

// Unify automatically handles the union
type Unified = Unify.Unify<UnifiableA | UnifiableB>
// Results in a properly unified type
```

**Signature**

```ts
type Unify<A> = Values<
  ExtractTypes<
    (
      & FilterIn<A>
      & { [typeSymbol]: A }
    )
  >
> extends infer Z ?
    | Z
    | FilterInUnmatched<
      A,
      Keys<
        ExtractTypes<
          (
            & FilterIn<A>
            & { [typeSymbol]: A }
          )
        >
      >
    >
    | FilterOut<A>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Unify.ts#L207)

Since v2.0.0
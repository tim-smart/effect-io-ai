Package: `effect`<br />
Module: `Types`<br />

## Types.TupleOfAtLeast

Constructs a tuple type with at least `N` elements of type `T`.

- Use when you need a minimum-length array type that still allows additional
  elements.
- Useful for variadic function signatures that require a minimum arity.

Behavior:
- Produces a tuple with `N` fixed positions followed by `...Array<T>`.

**Example** (Minimum-length tuple)

```ts
import type { Types } from "effect"

// At least 2 strings
const ok1: Types.TupleOfAtLeast<2, string> = ["a", "b"]
const ok2: Types.TupleOfAtLeast<2, string> = ["a", "b", "c", "d"]

// @ts-expect-error - too few elements
const bad: Types.TupleOfAtLeast<2, string> = ["a"]
```

**See**

- `TupleOf`

**Signature**

```ts
type [...TupleOf<N, T>, ...T[]] = [...TupleOf<N, T>, ...Array<T>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L125)

Since v3.3.0
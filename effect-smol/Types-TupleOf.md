Package: `effect`<br />
Module: `Types`<br />

## Types.TupleOf

Constructs a tuple type with exactly `N` elements of type `T`.

- Use when you need a fixed-length array type.
- Use instead of manually writing `[T, T, T, ...]` for longer tuples.

Behavior:
- If `N` is a literal number, produces a tuple of that exact length.
- If `N` is the general `number` type (non-literal), degrades to `Array<T>`.
- Negative numbers produce `never`.

**Example** (Fixed-length tuple)

```ts
import type { Types } from "effect"

// Exactly 3 numbers
const triple: Types.TupleOf<3, number> = [1, 2, 3]

// @ts-expect-error - too few elements
const tooFew: Types.TupleOf<3, number> = [1, 2]

// @ts-expect-error - too many elements
const tooMany: Types.TupleOf<3, number> = [1, 2, 3, 4]
```

**See**

- `TupleOfAtLeast`

**Signature**

```ts
type TupleOf<N, T> = N extends N ? number extends N ? Array<T> : TupleOf_<T, N, []> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L95)

Since v3.3.0
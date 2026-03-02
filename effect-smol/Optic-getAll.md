Package: `effect`<br />
Module: `Optic`<br />

## Optic.getAll

Returns a function that extracts all elements focused by a
`Traversal` as a plain mutable array.

When to use:
- You need the focused values as a simple `Array<A>` for further
  processing.

Behavior:
- Returns an empty array when the traversal cannot focus.
- Always returns a fresh array (safe to mutate).
- Does not mutate the source.

**Example** (collecting positive numbers)

```ts
import { Optic, Schema } from "effect"

type S = { readonly values: ReadonlyArray<number> }

const _pos = Optic.id<S>()
  .key("values")
  .forEach((n) => n.check(Schema.isGreaterThan(0)))

const getPositive = Optic.getAll(_pos)

console.log(getPositive({ values: [3, -1, 5] }))
// Output: [3, 5]

console.log(getPositive({ values: [-1, -2] }))
// Output: []
```

**See**

- `Traversal` — the optic type this operates on

**Signature**

```ts
declare const getAll: <S, A>(traversal: Traversal<S, A>) => (s: S) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1473)

Since v4.0.0
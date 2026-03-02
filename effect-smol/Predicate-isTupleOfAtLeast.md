Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOfAtLeast

Checks whether a readonly array has at least `n` elements.

When to use:
- You need a runtime check for tuple-like minimum length.
- You want to narrow `ReadonlyArray<T>` to `TupleOfAtLeast<N, T>`.

Behavior:
- Pure; does not mutate input.
- Only checks length, not element types.
- Returns a refinement on the array type.

**Example** (Minimum length)

```ts
import { Predicate } from "effect"

const hasAtLeast2 = Predicate.isTupleOfAtLeast(2)

console.log(hasAtLeast2([1, 2, 3]))
```

See also: `isTupleOf`, `Tuple`

**Signature**

```ts
declare const isTupleOfAtLeast: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOfAtLeast<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOfAtLeast<N, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L418)

Since v3.3.0
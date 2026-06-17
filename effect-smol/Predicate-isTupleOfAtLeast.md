Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOfAtLeast

Checks whether a readonly array has at least `n` elements.

**When to use**

Use when you need a `Predicate` guard for tuple-like minimum length that
narrows `ReadonlyArray<T>` to `TupleOfAtLeast<N, T>`.

**Details**

This only checks length, not element types, and returns a refinement on the
array type.

**Example** (Checking minimum length)

```ts
import { Predicate } from "effect"

const hasAtLeast2 = Predicate.isTupleOfAtLeast(2)

console.log(hasAtLeast2([1, 2, 3]))
```

**See**

- `isTupleOf`
- `Tuple`

**Signature**

```ts
declare const isTupleOfAtLeast: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOfAtLeast<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOfAtLeast<N, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L407)

Since v3.3.0
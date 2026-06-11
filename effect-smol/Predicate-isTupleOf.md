Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOf

Checks whether a readonly array has exactly `n` elements.

**When to use**

Use when you need a `Predicate` guard for exact tuple length that narrows
`ReadonlyArray<T>` to `TupleOf<N, T>`.

**Details**

This only checks length, not element types, and returns a refinement on the
array type.

**Example** (Exact length)

```ts
import { Predicate } from "effect"

const isPair = Predicate.isTupleOf(2)

console.log(isPair([1, 2]))
```

**See**

- `isTupleOfAtLeast`
- `Tuple`

**Signature**

```ts
declare const isTupleOf: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOf<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOf<N, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L374)

Since v3.3.0
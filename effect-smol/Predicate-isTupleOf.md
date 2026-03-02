Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOf

Checks whether a readonly array has exactly `n` elements.

When to use:
- You need a runtime check for tuple length.
- You want to narrow `ReadonlyArray<T>` to `TupleOf<N, T>`.

Behavior:
- Pure; does not mutate input.
- Only checks length, not element types.
- Returns a refinement on the array type.

**Example** (Exact length)

```ts
import { Predicate } from "effect"

const isPair = Predicate.isTupleOf(2)

console.log(isPair([1, 2]))
```

See also: `isTupleOfAtLeast`, `Tuple`

**Signature**

```ts
declare const isTupleOf: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOf<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOf<N, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L386)

Since v3.3.0
Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.isTupleOfAtLeast

Checks if an array has at least `N` elements, narrowing the type to a
tuple with a minimum length.

**When to use**

Use this to guard that an array has at least the expected number of
elements.

**Details**

This is a re-export of `Predicate.isTupleOfAtLeast`. It narrows the type to
`TupleOfAtLeast<N, T>` in the truthy branch.

**Gotchas**

This only checks `.length`; it does not validate element types.

**Example** (Checking minimum length)

```ts
import { Tuple } from "effect"

const arr: Array<number> = [1, 2, 3, 4]
if (Tuple.isTupleOfAtLeast(arr, 3)) {
  console.log(arr)
  // ^? [number, number, number, ...number[]]
}
```

**See**

- `isTupleOf` – check for an exact length

**Signature**

```ts
declare const isTupleOfAtLeast: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOfAtLeast<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOfAtLeast<N, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L709)

Since v3.3.0
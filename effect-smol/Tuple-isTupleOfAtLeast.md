Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.isTupleOfAtLeast

Checks if an array has at least `N` elements, narrowing the type to a
tuple with a minimum length.

Re-export of `Predicate.isTupleOfAtLeast`.

- Use to guard that an array has at least the expected number of elements.
- Only checks `.length`; does not validate element types.
- Narrows the type to `TupleOfAtLeast<N, T>` in the truthy branch.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L648)

Since v3.3.0
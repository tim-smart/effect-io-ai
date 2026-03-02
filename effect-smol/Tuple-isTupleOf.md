Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.isTupleOf

Checks if an array has exactly `N` elements, narrowing the type to a
fixed-length tuple.

Re-export of `Predicate.isTupleOf`.

- Use to guard against unexpected array lengths at runtime.
- Only checks `.length`; does not validate element types.
- Narrows the type to `TupleOf<N, T>` in the truthy branch.

**Example** (Checking exact length)

```ts
import { Tuple } from "effect"

const arr: Array<number> = [1, 2, 3]
if (Tuple.isTupleOf(arr, 3)) {
  console.log(arr)
  // ^? [number, number, number]
}
```

**See**

- `isTupleOfAtLeast` – check for a minimum length

**Signature**

```ts
declare const isTupleOf: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOf<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOf<N, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L620)

Since v3.3.0
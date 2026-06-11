Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.isTupleOf

Checks whether an array has exactly `N` elements, narrowing the type to a
fixed-length tuple.

**When to use**

Use to guard that an array has exactly the tuple length expected at
runtime.

**Details**

This is a re-export of `Predicate.isTupleOf`. It narrows the type to
`TupleOf<N, T>` in the truthy branch.

**Gotchas**

This only checks `.length`; it does not validate element types.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L617)

Since v3.3.0
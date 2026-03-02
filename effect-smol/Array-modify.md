Package: `effect`<br />
Module: `Array`<br />

## Array.modify

Applies a function to the element at the specified index, returning a new
array, or `undefined` if the index is out of bounds.

- Does not mutate the input.

**Example** (Modifying an element)

```ts
import { Array } from "effect"

console.log(Array.modify([1, 2, 3, 4], 2, (n) => n * 2)) // [1, 2, 6, 4]
console.log(Array.modify([1, 2, 3, 4], 5, (n) => n * 2)) // undefined
```

**See**

- `replace` — set a fixed value at an index
- `modifyHeadNonEmpty` — modify the first element
- `modifyLastNonEmpty` — modify the last element

**Signature**

```ts
declare const modify: { <A, B, S extends Iterable<A> = Iterable<A>>(i: number, f: (a: ReadonlyArray.Infer<S>) => B): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B> | undefined; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, f: (a: ReadonlyArray.Infer<S>) => B): ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1731)

Since v2.0.0
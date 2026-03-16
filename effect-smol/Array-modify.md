Package: `effect`<br />
Module: `Array`<br />

## Array.modify

Applies a function to the element at the specified index, returning a new
array, wrapped in an `Option`.

- Does not mutate the input.

**Example** (Modifying an element)

```ts
import { Array } from "effect"

console.log(Array.modify([1, 2, 3, 4], 2, (n) => n * 2)) // Option.some([1, 2, 6, 4])
console.log(Array.modify([1, 2, 3, 4], 5, (n) => n * 2)) // Option.none()
```

**See**

- `replace` — set a fixed value at an index
- `modifyHeadNonEmpty` — modify the first element
- `modifyLastNonEmpty` — modify the last element

**Signature**

```ts
declare const modify: { <A, B, S extends Iterable<A> = Iterable<A>>(i: number, f: (a: ReadonlyArray.Infer<S>) => B): (self: S) => Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, f: (a: ReadonlyArray.Infer<S>) => B): Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1733)

Since v2.0.0
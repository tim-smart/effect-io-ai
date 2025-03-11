## modify

Apply a function to the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

**Example**

```ts
import { Array } from "effect"

const result = Array.modify([1, 2, 3, 4], 2, (n) => n * 2)
console.log(result) // [1, 2, 6, 4]
```

**Signature**

```ts
declare const modify: { <A, B, S extends Iterable<A> = Iterable<A>>(i: number, f: (a: ReadonlyArray.Infer<S>) => B): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, f: (a: ReadonlyArray.Infer<S>) => B): ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1210)

Since v2.0.0
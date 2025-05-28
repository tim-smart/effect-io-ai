Package: `effect`<br />
Module: `Array`<br />

## Array.replace

Change the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

**Example**

```ts
import { Array } from "effect"

const result = Array.replace(['a', 'b', 'c', 'd'], 1, 'z')
console.log(result) // ['a', 'z', 'c', 'd']
```

**Signature**

```ts
declare const replace: { <B>(i: number, b: B): <A, S extends Iterable<A> = Iterable<A>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, b: B): ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1188)

Since v2.0.0
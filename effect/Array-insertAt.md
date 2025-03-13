Package: `effect`<br />
Module: `Array`<br />

## Array.insertAt

Insert an element at the specified index, creating a new `NonEmptyArray`,
or return `None` if the index is out of bounds.

**Example**

```ts
import { Array } from "effect"

const result = Array.insertAt(['a', 'b', 'c', 'e'], 3, 'd')
console.log(result) // Option.some(['a', 'b', 'c', 'd', 'e'])
```

**Signature**

```ts
declare const insertAt: { <B>(i: number, b: B): <A>(self: Iterable<A>) => Option<NonEmptyArray<A | B>>; <A, B>(self: Iterable<A>, i: number, b: B): Option<NonEmptyArray<A | B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1124)

Since v2.0.0
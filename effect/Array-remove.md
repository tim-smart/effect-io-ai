Package: `effect`<br />
Module: `Array`<br />

## Array.remove

Delete the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

**Example**

```ts
import { Array } from "effect"

const input = [1, 2, 3, 4]
const result = Array.remove(input, 2)
console.log(result) // [1, 2, 4]

const outOfBoundsResult = Array.remove(input, 5)
console.log(outOfBoundsResult) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const remove: { (i: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, i: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1287)

Since v2.0.0
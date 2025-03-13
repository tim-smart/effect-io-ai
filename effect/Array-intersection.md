Package: `effect`<br />
Module: `Array`<br />

## Array.intersection

Creates an `Array` of unique values that are included in all given `Iterable`s.
The order and references of result values are determined by the first `Iterable`.

**Example**

```ts
import { Array } from "effect"

const result = Array.intersection([1, 2, 3], [3, 4, 1])
console.log(result) // [1, 3]
```

**Signature**

```ts
declare const intersection: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Array<A & B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A & B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2213)

Since v2.0.0
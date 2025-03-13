Package: `effect`<br />
Module: `Array`<br />

## Array.scanRight

Accumulates values from an `Iterable` starting from the right, storing
each intermediate result in an array. Useful for tracking the progression of
a value through a series of transformations.

**Example**

```ts
import { Array } from "effect";

const result = Array.scanRight([1, 2, 3, 4], 0, (acc, value) => acc + value)
console.log(result) // [10, 9, 7, 4, 0]
```

**Signature**

```ts
declare const scanRight: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => NonEmptyArray<B>; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): NonEmptyArray<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L489)

Since v2.0.0
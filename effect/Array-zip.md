Package: `effect`<br />
Module: `Array`<br />

## Array.zip

Takes two `Iterable`s and returns an `Array` of corresponding pairs.
If one input `Iterable` is short, excess elements of the
longer `Iterable` are discarded.

**Example**

```ts
import { Array } from "effect"

const result = Array.zip([1, 2, 3], ['a', 'b'])
console.log(result) // [[1, 'a'], [2, 'b']]
```

**Signature**

```ts
declare const zip: { <B>(that: NonEmptyReadonlyArray<B>): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<[A, B]>; <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Array<[A, B]>; <A, B>(self: NonEmptyReadonlyArray<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<[A, B]>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1566)

Since v2.0.0
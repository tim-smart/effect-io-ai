Package: `effect`<br />
Module: `Array`<br />

## Array.unzip

This function is the inverse of `zip`. Takes an `Iterable` of pairs and return two corresponding `Array`s.

**Example**

```ts
import { Array } from "effect"

const result = Array.unzip([[1, "a"], [2, "b"], [3, "c"]])
console.log(result) // [[1, 2, 3], ['a', 'b', 'c']]
```

**Signature**

```ts
declare const unzip: <S extends Iterable<readonly [any, any]>>(self: S) => S extends NonEmptyReadonlyArray<readonly [infer A, infer B]> ? [NonEmptyArray<A>, NonEmptyArray<B>] : S extends Iterable<readonly [infer A, infer B]> ? [Array<A>, Array<B>] : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1501)

Since v2.0.0
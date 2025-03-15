Package: `effect`<br />
Module: `Array`<br />

## Array.chop

A useful recursion pattern for processing an `Iterable` to produce a new `Array`, often used for "chopping" up the input
`Iterable`. Typically chop is called with some function that will consume an initial prefix of the `Iterable` and produce a
value and the rest of the `Array`.

**Example**

```ts
import { Array } from "effect"

const result = Array.chop([1, 2, 3, 4, 5], (as): [number, Array<number>] => [as[0] * 2, as.slice(1)])
console.log(result) // [2, 4, 6, 8, 10]

// Explanation:
// The `chopFunction` takes the first element of the array, doubles it, and then returns it along with the rest of the array.
// The `chop` function applies this `chopFunction` recursively to the input array `[1, 2, 3, 4, 5]`,
// resulting in a new array `[2, 4, 6, 8, 10]`.
```

**Signature**

```ts
declare const chop: { <S extends Iterable<any>, B>(f: (as: NonEmptyReadonlyArray<ReadonlyArray.Infer<S>>) => readonly [B, ReadonlyArray<ReadonlyArray.Infer<S>>]): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (as: NonEmptyReadonlyArray<A>) => readonly [B, ReadonlyArray<A>]): NonEmptyArray<B>; <A, B>(self: Iterable<A>, f: (as: NonEmptyReadonlyArray<A>) => readonly [B, ReadonlyArray<A>]): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1760)

Since v2.0.0
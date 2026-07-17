Package: `effect`<br />
Module: `Array`<br />

## Array.flatMap

Maps each element to an array and flattens the results into a single array.

**When to use**

Use to map each array element to zero or more values and concatenate the
results in one pass.

**Details**

The function receives `(element, index)`. This returns `NonEmptyArray` when
both the input and mapped arrays are non-empty.

**Example** (Flat mapping an array)

```ts
import { Array } from "effect"

console.log(Array.flatMap([1, 2, 3], (x) => [x, x * 2])) // [1, 2, 2, 4, 3, 6]
```

**See**

- `map` — transform without flattening
- `flatten` — flatten without mapping

**Signature**

```ts
declare const flatMap: { <S extends ReadonlyArray<any>, T extends ReadonlyArray<any>>(f: (a: ReadonlyArray.Infer<S>, i: number) => T): (self: S) => ReadonlyArray.AndNonEmpty<S, T, ReadonlyArray.Infer<T>>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A, i: number) => NonEmptyReadonlyArray<B>): NonEmptyArray<B>; <A, B>(self: ReadonlyArray<A>, f: (a: A, i: number) => ReadonlyArray<B>): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3527)

Since v2.0.0
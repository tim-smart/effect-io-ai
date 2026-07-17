Package: `effect`<br />
Module: `Array`<br />

## Array.flatMapNullishOr

Maps each element with a nullable-returning function, keeping only non-null /
non-undefined results.

**When to use**

Use when you need to map and filter in one step, where the mapper can return
`null` or `undefined` to skip elements.

**Example** (Flat mapping with nullable values)

```ts
import { Array } from "effect"

console.log(Array.flatMapNullishOr([1, 2, 3], (n) => (n % 2 === 0 ? null : n)))
// [1, 3]
```

**See**

- `flatMap` for mapping each element to an array and flattening
- `fromNullishOr` for converting a single nullable value to an array

**Signature**

```ts
declare const flatMapNullishOr: { <A, B>(f: (a: A) => B): (self: ReadonlyArray<A>) => Array<NonNullable<B>>; <A, B>(self: ReadonlyArray<A>, f: (a: A) => B): Array<NonNullable<B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L4072)

Since v4.0.0
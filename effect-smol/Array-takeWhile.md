Package: `effect`<br />
Module: `Array`<br />

## Array.takeWhile

Takes elements from the start while the predicate holds, stopping at the
first element that fails.

**When to use**

Use to keep the leading elements of an iterable while each element satisfies
a predicate, returning the retained prefix as an array.

**Details**

Supports refinements for type narrowing. The predicate receives
`(element, index)`.

**Example** (Taking while condition holds)

```ts
import { Array } from "effect"

console.log(Array.takeWhile([1, 3, 2, 4, 1, 2], (x) => x < 4)) // [1, 3, 2]
```

**See**

- `take` for keeping a fixed number of leading elements
- `dropWhile` for removing the matching prefix and keeping the rest
- `span` for splitting the matching prefix from the remaining elements

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Array<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Array<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Array<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1442)

Since v2.0.0
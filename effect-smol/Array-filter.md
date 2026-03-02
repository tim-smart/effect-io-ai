Package: `effect`<br />
Module: `Array`<br />

## Array.filter

Keeps only elements satisfying a predicate (or refinement).

- The predicate receives `(element, index)`.
- Supports refinements for type narrowing.

**Example** (Filtering even numbers)

```ts
import { Array } from "effect"

console.log(Array.filter([1, 2, 3, 4], (x) => x % 2 === 0)) // [2, 4]
```

**See**

- `partition` — split into matching and non-matching

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Array<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Array<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Array<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3287)

Since v2.0.0
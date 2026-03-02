Package: `effect`<br />
Module: `Array`<br />

## Array.span

Splits an iterable into two arrays: the longest prefix where the predicate
holds, and the remaining elements.

- Equivalent to `[takeWhile(pred), dropWhile(pred)]` but more efficient
  (single pass).
- Supports refinements for type narrowing of the prefix.

**Example** (Splitting at predicate boundary)

```ts
import { Array } from "effect"

console.log(Array.span([1, 3, 2, 4, 5], (x) => x % 2 === 1)) // [[1, 3], [2, 4, 5]]
```

**See**

- `takeWhile` — keep only the matching prefix
- `dropWhile` — keep only the rest
- `splitWhere` — split at the first element matching a predicate

**Signature**

```ts
declare const span: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => [init: Array<B>, rest: Array<Exclude<A, B>>]; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [init: Array<A>, rest: Array<A>]; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): [init: Array<B>, rest: Array<Exclude<A, B>>]; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [init: Array<A>, rest: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1313)

Since v2.0.0
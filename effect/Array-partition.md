Package: `effect`<br />
Module: `Array`<br />

## Array.partition

Separate elements based on a predicate that also exposes the index of the element.

**Example**

```ts
import { Array } from "effect"

const result = Array.partition([1, 2, 3, 4], n => n % 2 === 0)
console.log(result) // [[1, 3], [2, 4]]
```

**Signature**

```ts
declare const partition: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => [excluded: Array<Exclude<A, B>>, satisfying: Array<B>]; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [excluded: Array<A>, satisfying: Array<A>]; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): [excluded: Array<Exclude<A, B>>, satisfying: Array<B>]; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [excluded: Array<A>, satisfying: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2621)

Since v2.0.0
Package: `effect`<br />
Module: `Array`<br />

## Array.findFirst

Returns the first element matching a predicate, refinement, or mapping
function, wrapped in `Option`.

- Accepts a predicate `(a, i) => boolean`, a refinement, or a function
  `(a, i) => Option<B>` for simultaneous find-and-transform.
- Returns `Option.none()` if no element matches.

**Example** (Finding the first match)

```ts
import { Array } from "effect"

console.log(Array.findFirst([1, 2, 3, 4, 5], (x) => x > 3)) // Option.some(4)
```

**See**

- `findLast` — search from the end
- `findFirstIndex` — get the index instead
- `findFirstWithIndex` — get both element and index

**Signature**

```ts
declare const findFirst: { <A, B>(f: (a: NoInfer<A>, i: number) => Option.Option<B>): (self: Iterable<A>) => Option.Option<B>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option.Option<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option.Option<A>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option.Option<B>): Option.Option<B>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option.Option<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1532)

Since v2.0.0
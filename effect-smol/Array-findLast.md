Package: `effect`<br />
Module: `Array`<br />

## Array.findLast

Returns the last element matching a predicate, refinement, or mapping
function, wrapped in `Option`.

- Searches from the end of the array.
- Returns `Option.none()` if no element matches.

**Example** (Finding the last match)

```ts
import { Array } from "effect"

console.log(Array.findLast([1, 2, 3, 4, 5], (n) => n % 2 === 0)) // Option.some(4)
```

**See**

- `findFirst` — search from the start
- `findLastIndex` — get the index instead

**Signature**

```ts
declare const findLast: { <A, B>(f: (a: NoInfer<A>, i: number) => Option.Option<B>): (self: Iterable<A>) => Option.Option<B>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option.Option<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option.Option<A>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option.Option<B>): Option.Option<B>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option.Option<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1610)

Since v2.0.0
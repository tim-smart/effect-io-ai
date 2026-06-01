Package: `effect`<br />
Module: `Array`<br />

## Array.findFirstWithIndex

Returns the first selected value together with its index, wrapped in an
`Option`.

**When to use**

Use to find both the first matching element and its index in one pass.

**Details**

Accepts a predicate, a refinement, or a function returning `Option`. For an
`Option`-returning function, returns `[mappedValue, index]` for the first
`Some`, or `Option.none()` if no element is selected.

**Example** (Finding element with its index)

```ts
import { Array } from "effect"

console.log(Array.findFirstWithIndex([1, 2, 3, 4, 5], (x) => x > 3)) // Option.some([4, 3])
```

**See**

- `findFirst` — get only the element
- `findFirstIndex` — get only the index

**Signature**

```ts
declare const findFirstWithIndex: { <A, B>(f: (a: NoInfer<A>, i: number) => Option.Option<B>): (self: Iterable<A>) => Option.Option<[B, number]>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option.Option<[B, number]>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option.Option<[A, number]>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option.Option<B>): Option.Option<[B, number]>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option.Option<[B, number]>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option.Option<[A, number]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1840)

Since v3.17.0
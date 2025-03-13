Package: `effect`<br />
Module: `Array`<br />

## Array.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Example**

```ts
import { Array } from "effect"

const result = Array.findFirst([1, 2, 3, 4, 5], x => x > 3)
console.log(result) // Option.some(4)
```

**Signature**

```ts
declare const findFirst: { <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1056)

Since v2.0.0
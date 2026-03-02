Package: `effect`<br />
Module: `Array`<br />

## Array.findFirstWithIndex

Returns a tuple `[element, index]` of the first element matching a
predicate, or `undefined` if none match.

**Example** (Finding element with its index)

```ts
import { Array } from "effect"

console.log(Array.findFirstWithIndex([1, 2, 3, 4, 5], (x) => x > 3)) // [4, 3]
```

**See**

- `findFirst` — get only the element
- `findFirstIndex` — get only the index

**Signature**

```ts
declare const findFirstWithIndex: { <A, B>(f: (a: NoInfer<A>, i: number) => Option.Option<B>): (self: Iterable<A>) => [B, number] | undefined; <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => [B, number] | undefined; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [A, number] | undefined; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option.Option<B>): [B, number] | undefined; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): [B, number] | undefined; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [A, number] | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1560)

Since v3.17.0
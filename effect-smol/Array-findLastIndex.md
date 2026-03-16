Package: `effect`<br />
Module: `Array`<br />

## Array.findLastIndex

Returns the index of the last element matching the predicate, wrapped in an
`Option`.

**Example** (Finding the last matching index)

```ts
import { Array } from "effect"

console.log(Array.findLastIndex([1, 3, 8, 9], (x) => x < 5)) // Option.some(1)
```

**See**

- `findFirstIndex` — search from the start
- `findLast` — get the element itself

**Signature**

```ts
declare const findLastIndex: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option.Option<number>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1498)

Since v2.0.0
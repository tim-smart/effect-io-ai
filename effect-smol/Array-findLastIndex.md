Package: `effect`<br />
Module: `Array`<br />

## Array.findLastIndex

Returns the index of the last element matching the predicate, or `undefined`
if none match.

**Example** (Finding the last matching index)

```ts
import { Array } from "effect"

console.log(Array.findLastIndex([1, 3, 8, 9], (x) => x < 5)) // 1
```

**See**

- `findFirstIndex` — search from the start
- `findLast` — get the element itself

**Signature**

```ts
declare const findLastIndex: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => number | undefined; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): number | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1497)

Since v2.0.0
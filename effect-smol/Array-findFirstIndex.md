Package: `effect`<br />
Module: `Array`<br />

## Array.findFirstIndex

Returns the index of the first element matching the predicate, or `undefined`
if none match.

**Example** (Finding an index)

```ts
import { Array } from "effect"

console.log(Array.findFirstIndex([5, 3, 8, 9], (x) => x > 5)) // 2
```

**See**

- `findLastIndex` — search from the end
- `findFirst` — get the element itself

**Signature**

```ts
declare const findFirstIndex: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => number | undefined; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): number | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1467)

Since v2.0.0
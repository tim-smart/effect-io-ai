## findLastIndex

Return the last index for which a predicate holds.

**Example**

```ts
import { Array } from "effect"

const result = Array.findLastIndex([1, 3, 8, 9], x => x < 5)
console.log(result) // Option.some(1)
```

**Signature**

```ts
declare const findLastIndex: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<number>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1027)

Since v2.0.0
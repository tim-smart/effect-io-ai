Package: `effect`<br />
Module: `Array`<br />

## Array.findFirstIndex

Return the first index for which a predicate holds.

**Example**

```ts
import { Array } from "effect"

const result = Array.findFirstIndex([5, 3, 8, 9], x => x > 5)
console.log(result) // Option.some(2)
```

**Signature**

```ts
declare const findFirstIndex: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option.Option<number>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L995)

Since v2.0.0
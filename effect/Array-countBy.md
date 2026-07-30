Package: `effect`<br />
Module: `Array`<br />

## Array.countBy

Counts all the element of the given array that pass the given predicate

**Example**

```ts
import { Array } from "effect"

const result = Array.countBy([1, 2, 3, 4, 5], n => n % 2 === 0)
console.log(result) // 2
```

**Signature**

```ts
declare const countBy: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => number; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1171)

Since v3.16.0
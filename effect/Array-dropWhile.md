Package: `effect`<br />
Module: `Array`<br />

## Array.dropWhile

Remove the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

**Example**

```ts
import { Array } from "effect"

const result = Array.dropWhile([1, 2, 3, 4, 5], x => x < 4)
console.log(result) // [4, 5]
```

**Signature**

```ts
declare const dropWhile: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L971)

Since v2.0.0
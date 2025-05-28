Package: `effect`<br />
Module: `Array`<br />

## Array.cartesianWith

Zips this chunk crosswise with the specified chunk using the specified combiner.

**Example**

```ts
import { Array } from "effect"

const result = Array.cartesianWith([1, 2], ["a", "b"], (a, b) => `${a}-${b}`)
console.log(result) // ["1-a", "1-b", "2-a", "2-b"]
```

**Signature**

```ts
declare const cartesianWith: { <A, B, C>(that: ReadonlyArray<B>, f: (a: A, b: B) => C): (self: ReadonlyArray<A>) => Array<C>; <A, B, C>(self: ReadonlyArray<A>, that: ReadonlyArray<B>, f: (a: A, b: B) => C): Array<C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3271)

Since v2.0.0
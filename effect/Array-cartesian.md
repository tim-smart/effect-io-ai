Package: `effect`<br />
Module: `Array`<br />

## Array.cartesian

Zips this chunk crosswise with the specified chunk.

**Example**

```ts
import { Array } from "effect"

const result = Array.cartesian([1, 2], ["a", "b"])
console.log(result) // [[1, "a"], [1, "b"], [2, "a"], [2, "b"]]
```

**Signature**

```ts
declare const cartesian: { <B>(that: ReadonlyArray<B>): <A>(self: ReadonlyArray<A>) => Array<[A, B]>; <A, B>(self: ReadonlyArray<A>, that: ReadonlyArray<B>): Array<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3188)

Since v2.0.0
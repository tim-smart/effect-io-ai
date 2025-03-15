Package: `effect`<br />
Module: `Array`<br />

## Array.reduce

Reduces an array from the left.

**Example**

```ts
import { Array } from "effect"

const result = Array.reduce([1, 2, 3], 0, (acc, n) => acc + n)
console.log(result) // 6
```

**Signature**

```ts
declare const reduce: { <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Iterable<A>) => B; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A, i: number) => B): B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2680)

Since v2.0.0
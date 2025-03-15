Package: `effect`<br />
Module: `Array`<br />

## Array.splitAt

Splits an `Iterable` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` can be `0`.

**Example**

```ts
import { Array } from "effect"

const result = Array.splitAt([1, 2, 3, 4, 5], 3)
console.log(result) // [[1, 2, 3], [4, 5]]
```

**Signature**

```ts
declare const splitAt: { (n: number): <A>(self: Iterable<A>) => [beforeIndex: Array<A>, fromIndex: Array<A>]; <A>(self: Iterable<A>, n: number): [beforeIndex: Array<A>, fromIndex: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1807)

Since v2.0.0
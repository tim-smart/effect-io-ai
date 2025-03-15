Package: `effect`<br />
Module: `Array`<br />

## Array.split

Splits this iterable into `n` equally sized arrays.

**Example**

```ts
import { Array } from "effect"

const result = Array.split([1, 2, 3, 4, 5, 6, 7, 8], 3)
console.log(result) // [[1, 2, 3], [4, 5, 6], [7, 8]]
```

**Signature**

```ts
declare const split: { (n: number): <A>(self: Iterable<A>) => Array<Array<A>>; <A>(self: Iterable<A>, n: number): Array<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1863)

Since v2.0.0
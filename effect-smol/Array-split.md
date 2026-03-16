Package: `effect`<br />
Module: `Array`<br />

## Array.split

Splits an iterable into `n` roughly equal-sized chunks.

- Uses `chunksOf(ceil(length / n))` internally.
- The last chunk may be shorter.

**Example** (Splitting into groups)

```ts
import { Array } from "effect"

console.log(Array.split([1, 2, 3, 4, 5, 6, 7, 8], 3)) // [[1, 2, 3], [4, 5, 6], [7, 8]]
```

**See**

- `chunksOf` — split into fixed-size chunks

**Signature**

```ts
declare const split: { (n: number): <A>(self: Iterable<A>) => Array<Array<A>>; <A>(self: Iterable<A>, n: number): Array<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2407)

Since v2.0.0
Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.makeBy

Return a Chunk of length n with element i initialized with f(i).

**Note**. `n` is normalized to an integer >= 1.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.makeBy(5, (i) => i * 2)
console.log(chunk)
// { _id: 'Chunk', values: [ 0, 2, 4, 6, 8 ] }
```

**Signature**

```ts
declare const makeBy: { <A>(f: (i: number) => A): (n: number) => NonEmptyChunk<A>; <A>(n: number, f: (i: number) => A): NonEmptyChunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2417)

Since v2.0.0
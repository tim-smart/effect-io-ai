Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.makeBy

Returns a non-empty `Chunk` of length `n` with element `i` initialized by `f(i)`.

**Details**

`n` is normalized to an integer greater than or equal to `1`.

**Example** (Generating chunks from indices)

```ts
import { Chunk } from "effect"

const chunk = Chunk.makeBy(5, (i) => i * 2)
console.log(Chunk.toArray(chunk)) // [0, 2, 4, 6, 8]
```

**Signature**

```ts
declare const makeBy: { <A>(f: (i: number) => A): (n: number) => NonEmptyChunk<A>; <A>(n: number, f: (i: number) => A): NonEmptyChunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2483)

Since v2.0.0
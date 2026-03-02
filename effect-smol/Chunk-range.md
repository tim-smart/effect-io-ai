Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.range

Create a non empty `Chunk` containing a range of integers, including both endpoints.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.range(1, 5)
console.log(chunk)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5 ] }
```

**Signature**

```ts
declare const range: (start: number, end: number) => NonEmptyChunk<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2437)

Since v2.0.0
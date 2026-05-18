Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.fromIterable

Creates a new `Chunk` from an iterable collection of values.

**Example** (Creating chunks from iterables)

```ts
import { Chunk } from "effect"

const chunk = Chunk.fromIterable([1, 2, 3])
console.log(Chunk.toArray(chunk)) // [1, 2, 3]
```

**Signature**

```ts
declare const fromIterable: <A>(self: Iterable<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L416)

Since v2.0.0
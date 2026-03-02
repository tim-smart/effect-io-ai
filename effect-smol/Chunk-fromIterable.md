Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.fromIterable

Creates a new `Chunk` from an iterable collection of values.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.fromIterable([1, 2, 3])
console.log(chunk)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
declare const fromIterable: <A>(self: Iterable<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L408)

Since v2.0.0
Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.of

Builds a `NonEmptyChunk` from a single element.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.of("hello")
console.log(chunk)
// { _id: 'Chunk', values: [ "hello" ] }
```

**Signature**

```ts
declare const of: <A>(a: A) => NonEmptyChunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L390)

Since v2.0.0
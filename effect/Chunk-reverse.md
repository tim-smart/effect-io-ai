Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.reverse

Reverses the order of elements in a `Chunk`.
Importantly, if the input chunk is a `NonEmptyChunk`, the reversed chunk will also be a `NonEmptyChunk`.

**Example**

```ts
import * as assert from "node:assert"
import { Chunk } from "effect"

const numbers = Chunk.make(1, 2, 3)
const reversedNumbers = Chunk.reverse(numbers)
assert.deepStrictEqual(reversedNumbers, Chunk.make(3, 2, 1))
```

**Signature**

```ts
declare const reverse: <S extends Chunk<any>>(self: S) => Chunk.With<S, Chunk.Infer<S>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L364)

Since v2.0.0
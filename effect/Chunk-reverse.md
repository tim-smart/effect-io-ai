# reverse

Reverses the order of elements in a `Chunk`.
Importantly, if the input chunk is a `NonEmptyChunk`, the reversed chunk will also be a `NonEmptyChunk`.

To import and use `reverse` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.reverse
undefined

**Example**

```ts
import { Chunk } from "effect"

const numbers = Chunk.make(1, 2, 3)
const reversedNumbers = Chunk.reverse(numbers)
assert.deepStrictEqual(reversedNumbers, Chunk.make(3, 2, 1))
```

**Signature**

```ts
export declare const reverse: <S extends Chunk<any>>(self: S) => Chunk.With<S, Chunk.Infer<S>>
```

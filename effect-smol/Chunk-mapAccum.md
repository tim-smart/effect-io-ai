Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const [finalState, mapped] = Chunk.mapAccum(chunk, 0, (state, current) => [
  state + current, // accumulate sum
  state + current // output running sum
])

console.log(finalState) // 15 (final accumulated sum)
console.log(Chunk.toArray(mapped)) // [1, 3, 6, 10, 15] (running sums)

// Building a string with indices
const words = Chunk.make("hello", "world", "effect")
const [count, indexed] = Chunk.mapAccum(words, 0, (index, word) => [
  index + 1,
  `${index}: ${word}`
])
console.log(count) // 3
console.log(Chunk.toArray(indexed)) // ["0: hello", "1: world", "2: effect"]
```

**Signature**

```ts
declare const mapAccum: { <S, A, B>(s: S, f: (s: S, a: A) => readonly [S, B]): (self: Chunk<A>) => [S, Chunk<B>]; <S, A, B>(self: Chunk<A>, s: S, f: (s: S, a: A) => readonly [S, B]): [S, Chunk<B>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1705)

Since v2.0.0
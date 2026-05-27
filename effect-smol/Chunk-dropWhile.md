Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.dropWhile

Drops all elements so long as the predicate returns true.

**Example** (Dropping elements while a predicate matches)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.dropWhile(chunk, (n) => n < 3)
console.log(Chunk.toArray(result)) // [3, 4, 5]
```

**Signature**

```ts
declare const dropWhile: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L901)

Since v2.0.0
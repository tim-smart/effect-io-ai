Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.dropWhile

Drops all elements so long as the predicate returns true.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.dropWhile(chunk, (n) => n < 3)
console.log(result)
// { _id: 'Chunk', values: [ 3, 4, 5 ] }
```

**Signature**

```ts
declare const dropWhile: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L885)

Since v2.0.0
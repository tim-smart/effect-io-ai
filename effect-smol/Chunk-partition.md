Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.partition

Splits a chunk using a `Filter` into failures and successes.

- Returns `[excluded, satisfying]`.
- The filter receives `(element, index)`.

**Example**

```ts
import { Chunk, Result } from "effect"

const [excluded, satisfying] = Chunk.partition(Chunk.make(1, -2, 3), (n, i) =>
  n > 0 ? Result.succeed(n + i) : Result.fail(`negative:${n}`)
)

console.log(Chunk.toArray(excluded)) // ["negative:-2"]
console.log(Chunk.toArray(satisfying)) // [1, 5]
```

**Signature**

```ts
declare const partition: { <A, Pass, Fail>(f: (input: NoInfer<A>, i: number) => Result<Pass, Fail>): (self: Chunk<A>) => [excluded: Chunk<Fail>, satisfying: Chunk<Pass>]; <A, Pass, Fail>(self: Chunk<A>, f: (input: A, i: number) => Result<Pass, Fail>): [excluded: Chunk<Fail>, satisfying: Chunk<Pass>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1734)

Since v2.0.0
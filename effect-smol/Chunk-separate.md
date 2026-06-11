Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.separate

Separates a chunk of `Result` values into a chunk of failures and a chunk of
successes.

**Details**

The returned tuple is `[failures, successes]`, preserving the original order
within each side.

**Example** (Separating failures and successes)

```ts
import { Chunk, Result } from "effect"

const chunk = Chunk.make(
  Result.succeed(1),
  Result.fail("error1"),
  Result.succeed(2),
  Result.fail("error2"),
  Result.succeed(3)
)

const [errors, values] = Chunk.separate(chunk)
console.log(Chunk.toArray(errors)) // ["error1", "error2"]
console.log(Chunk.toArray(values)) // [1, 2, 3]

// All successes
const allSuccesses = Chunk.make(Result.succeed(1), Result.succeed(2))
const [noErrors, allValues] = Chunk.separate(allSuccesses)
console.log(Chunk.toArray(noErrors)) // []
console.log(Chunk.toArray(allValues)) // [1, 2]
```

**Signature**

```ts
declare const separate: <A, B>(self: Chunk<Result<B, A>>) => [Chunk<A>, Chunk<B>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1832)

Since v2.0.0
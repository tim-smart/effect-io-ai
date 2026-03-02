Package: `effect`<br />
Module: `NonEmptyIterable`<br />

## NonEmptyIterable.NonEmptyIterable

Represents an iterable that is guaranteed to contain at least one element.

`NonEmptyIterable<A>` extends the standard `Iterable<A>` interface with a type-level
guarantee of non-emptiness. This allows for safe operations that would otherwise
require runtime checks or could throw exceptions.

The type is branded with a unique symbol to ensure type safety while maintaining
full compatibility with JavaScript's iteration protocol.

**Example**

```ts
import { Array } from "effect"
import * as Chunk from "effect/Chunk"
import * as NonEmptyIterable from "effect/NonEmptyIterable"

// Function that requires non-empty data
function getFirst<A>(data: NonEmptyIterable.NonEmptyIterable<A>): A {
  // Safe - guaranteed to have at least one element
  const [first] = NonEmptyIterable.unprepend(data)
  return first
}

// Works with any non-empty iterable
const numbers = Array.make(
  1,
  2,
  3
) as unknown as NonEmptyIterable.NonEmptyIterable<number>
const firstNumber = getFirst(numbers) // 1

const chars = "hello" as unknown as NonEmptyIterable.NonEmptyIterable<string>
const firstChar = getFirst(chars) // "h"

const entries = new Map([["a", 1], [
  "b",
  2
]]) as unknown as NonEmptyIterable.NonEmptyIterable<[string, number]>
const firstEntry = getFirst(entries) // ["a", 1]

// Custom generator
function* countdown(): Generator<number> {
  yield 3
  yield 2
  yield 1
}
const firstCount = getFirst(
  Chunk.fromIterable(
    countdown()
  ) as unknown as NonEmptyIterable.NonEmptyIterable<number>
) // 3
```

**Signature**

```ts
export interface NonEmptyIterable<out A> extends Iterable<A> {
  readonly [nonEmpty]: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/NonEmptyIterable.ts#L218)

Since v2.0.0
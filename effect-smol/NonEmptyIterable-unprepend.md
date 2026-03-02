Package: `effect`<br />
Module: `NonEmptyIterable`<br />

## NonEmptyIterable.unprepend

Safely extracts the first element and remaining elements from a non-empty iterable.

This function provides a safe way to deconstruct a `NonEmptyIterable` into its
head (first element) and tail (remaining elements as an iterator). Since the
iterable is guaranteed to be non-empty, the first element is always available.

**Example**

```ts
import { Array } from "effect"
import * as Chunk from "effect/Chunk"
import * as NonEmptyIterable from "effect/NonEmptyIterable"

// Helper to make iterator iterable for Array.from
const iteratorToIterable = <T>(iterator: Iterator<T>): Iterable<T> => ({
  [Symbol.iterator]() {
    return iterator
  }
})

// With NonEmptyArray from Array.make (cast to NonEmptyIterable)
const numbers = Array.make(
  1,
  2,
  3,
  4,
  5
) as unknown as NonEmptyIterable.NonEmptyIterable<number>
const [first, rest] = NonEmptyIterable.unprepend(numbers)
console.log(first) // 1
console.log(globalThis.Array.from(iteratorToIterable(rest))) // [2, 3, 4, 5]

// With strings (assert when known to be non-empty)
const text = "hello" as unknown as NonEmptyIterable.NonEmptyIterable<string>
const [firstChar, restChars] = NonEmptyIterable.unprepend(text)
console.log(firstChar) // "h"
console.log(globalThis.Array.from(iteratorToIterable(restChars)).join("")) // "ello"

// With Sets (assert when known to be non-empty)
const uniqueNumbers = new Set([
  10,
  20,
  30
]) as unknown as NonEmptyIterable.NonEmptyIterable<number>
const [firstUnique, restUnique] = NonEmptyIterable.unprepend(uniqueNumbers)
console.log(firstUnique) // 10 (or any element, Set order is not guaranteed)
console.log(globalThis.Array.from(iteratorToIterable(restUnique))) // [20, 30] (in some order)

// With Maps (assert when known to be non-empty)
const keyValuePairs = new Map([["a", 1], ["b", 2], [
  "c",
  3
]]) as unknown as NonEmptyIterable.NonEmptyIterable<[string, number]>
const [firstPair, restPairs] = NonEmptyIterable.unprepend(keyValuePairs)
console.log(firstPair) // ["a", 1]
console.log(globalThis.Array.from(iteratorToIterable(restPairs))) // [["b", 2], ["c", 3]]

// With custom generators
function* fibonacci(): Generator<number> {
  let a = 1, b = 1
  yield a
  for (let i = 0; i < 10; i++) {
    yield b
    const next = a + b
    a = b
    b = next
  }
}

const generator = Chunk.fromIterable(
  fibonacci()
) as unknown as NonEmptyIterable.NonEmptyIterable<number>
const [firstFib, restFib] = NonEmptyIterable.unprepend(generator)
console.log(firstFib) // 1
console.log(globalThis.Array.from(iteratorToIterable(restFib))) // [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

// Practical usage: implementing reduce for non-empty iterables
function reduceNonEmpty<A, B>(
  data: NonEmptyIterable.NonEmptyIterable<A>,
  f: (acc: B, current: A) => B,
  initial: B
): B {
  const [first, rest] = NonEmptyIterable.unprepend(data)
  let result = f(initial, first)

  // Convert iterator to iterable for iteration
  const iterable = {
    [Symbol.iterator]() {
      return rest
    }
  }
  for (const item of iterable) {
    result = f(result, item)
  }

  return result
}

const data = Array.make(
  1,
  2,
  3,
  4
) as unknown as NonEmptyIterable.NonEmptyIterable<number>
const sum = reduceNonEmpty(data, (acc, x) => acc + x, 0) // 10
```

**Signature**

```ts
declare const unprepend: <A>(self: NonEmptyIterable<A>) => [firstElement: A, remainingElements: Iterator<A>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/NonEmptyIterable.ts#L335)

Since v2.0.0
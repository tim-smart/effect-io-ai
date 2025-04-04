Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.fromIterable

Creates a new `MutableHashSet` from an iterable collection of values.
Duplicate values are omitted.

Time complexity: **`O(n)`** where n is the number of elements in the iterable

Creating a `MutableHashSet` from an `Array`

```ts
import { MutableHashSet } from "effect"

const array: Iterable<number> = [1, 2, 3, 4, 5, 1, 2, 3] // Array<T> is also Iterable<T>
const mutableHashSet: MutableHashSet.MutableHashSet<number> =
  MutableHashSet.fromIterable(array)

console.log(
  // MutableHashSet.MutableHashSet<T> is also an Iterable<T>
  Array.from(mutableHashSet)
) // Output: [1, 2, 3, 4, 5]
```

Creating a `MutableHashSet` from a `Set`

```ts
import { MutableHashSet, pipe } from "effect"

console.log(
  pipe(
    // Set<string> is an Iterable<string>
    new Set(["apple", "banana", "orange", "apple"]),
    // constructs MutableHashSet from an Iterable Set
    MutableHashSet.fromIterable,
    // since MutableHashSet it is itself an Iterable, we can pass it to other functions expecting an Iterable
    Array.from
  )
) // Output: ["apple", "banana", "orange"]
```

Creating a `MutableHashSet` from a `Generator`

```ts
import { MutableHashSet } from "effect"

// Generator functions return iterables
function* fibonacci(n: number): Generator<number, void, never> {
  let [a, b] = [0, 1]
  for (let i = 0; i < n; i++) {
    yield a
    ;[a, b] = [b, a + b]
  }
}

// Create a MutableHashSet from the first 10 Fibonacci numbers
const fibonacciSet = MutableHashSet.fromIterable(fibonacci(10))

console.log(Array.from(fibonacciSet))
// Outputs: [0, 1, 2, 3, 5, 8, 13, 21, 34] but in unsorted order
```

Creating a `MutableHashSet` from another `module:MutableHashSet`

```ts
import { MutableHashSet, pipe } from "effect"

console.log(
  pipe(
    MutableHashSet.make(1, 2, 3, 4),
    MutableHashSet.fromIterable,
    Array.from
  )
) // Output: [1, 2, 3, 4]
```

Creating a `MutableHashSet` from an `module:HashSet`

```ts
import { HashSet, MutableHashSet, pipe } from "effect"

console.log(
  pipe(
    HashSet.make(1, 2, 3, 4), // it works also with its immutable HashSet sibling
    MutableHashSet.fromIterable,
    Array.from
  )
) // Output: [1, 2, 3, 4]
```

Creating a `MutableHashSet` from other Effect's data structures like
`Chunk`

```ts
import { Chunk, MutableHashSet, pipe } from "effect"

console.log(
  pipe(
    Chunk.make(1, 2, 3, 4), //  Chunk is also an Iterable<T>
    MutableHashSet.fromIterable,
    Array.from
  )
) // Outputs: [1, 2, 3, 4]
```

**See**

- Other `MutableHashSet` constructors are `module:MutableHashSet.empty` `module:MutableHashSet.make`

**Signature**

```ts
declare const fromIterable: <K = never>(keys: Iterable<K>) => MutableHashSet<K>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L294)

Since v2.0.0
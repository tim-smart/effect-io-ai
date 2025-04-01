Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.fromIterable

Creates a new `HashSet` from an iterable collection of values.

Time complexity: **`O(n)`** where n is the number of elements in the iterable

**Example**

```ts
// Creating a HashSet from an Array
import { HashSet, pipe } from "effect"

console.log(
  pipe(
    [1, 2, 3, 4, 5, 1, 2, 3], // Array<number> is an Iterable<number>;  Note the duplicates.
    HashSet.fromIterable,
    HashSet.toValues
  )
) // Output: [1, 2, 3, 4, 5]
```

**Example**

```ts
// Creating a HashSet from a Set
import { HashSet, pipe } from "effect"

console.log(
  pipe(
    new Set(["apple", "banana", "orange", "apple"]), // Set<string> is an Iterable<string>
    HashSet.fromIterable,
    HashSet.toValues
  )
) // Output: ["apple", "banana", "orange"]
```

**Example**

```ts
// Creating a HashSet from a Generator
import { HashSet } from "effect"

// Generator functions return iterables
function* fibonacci(n: number): Generator<number, void, unknown> {
  let [a, b] = [0, 1]
  for (let i = 0; i < n; i++) {
    yield a
    ;[a, b] = [b, a + b]
  }
}

// Create a HashSet from the first 10 Fibonacci numbers
const fibonacciSet = HashSet.fromIterable(fibonacci(10))

console.log(HashSet.toValues(fibonacciSet))
// Outputs: [0, 1, 2, 3, 5, 8, 13, 21, 34] but in unsorted order
```

**Example**

```ts
//  Creating a HashSet from another HashSet
import { HashSet, pipe } from "effect"

console.log(
  pipe(
    // since HashSet implements the Iterable interface, we can use it to create a new HashSet
    HashSet.make(1, 2, 3, 4),
    HashSet.fromIterable,
    HashSet.toValues // turns the HashSet back into an array
  )
) // Output: [1, 2, 3, 4]
```

**Example**

```ts
// Creating a HashSet from other Effect's data structures like Chunk
import { Chunk, HashSet, pipe } from "effect"

console.log(
  pipe(
    Chunk.make(1, 2, 3, 4), // Iterable<number>
    HashSet.fromIterable,
    HashSet.toValues // turns the HashSet back into an array
  )
) // Outputs: [1, 2, 3, 4]
```

**See**

- Other `HashSet` constructors are `module:HashSet.empty` `module:HashSet.make`

**Signature**

```ts
declare const fromIterable: <A>(elements: Iterable<A>) => HashSet<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L470)

Since v2.0.0
# exists

Determines whether any element of the iterable satisfies the effectual
predicate.

**Details**

This function checks whether any element in a given collection (an iterable)
satisfies a condition defined by an effectful predicate.

The predicate is a function that takes an element and its index, and it
returns an effect that evaluates to a boolean.

The function will process each element, and if any element satisfies the
predicate (returns `true`), the function will immediately return `true`.

If none of the elements satisfy the condition, it will return `false`.

**When to Use**

This function allows you to quickly check for a condition in a collection
without having to manually iterate over it.

To import and use `exists` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.exists
```

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4]
const predicate = (n: number, i: number) => Effect.succeed(n > 2)

const program = Effect.gen(function* () {
  const hasLargeNumber = yield* Effect.exists(numbers, predicate)
  console.log(hasLargeNumber)
})

Effect.runFork(program)
// Output: true
```

**Signature**

```ts
export declare const exists: {
  <A, E, R>(
    predicate: (a: A, i: number) => Effect<boolean, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<boolean, E, R>
  <A, E, R>(
    elements: Iterable<A>,
    predicate: (a: A, i: number) => Effect<boolean, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<boolean, E, R>
}
```

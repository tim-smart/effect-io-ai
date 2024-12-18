# head

Returns the first element of the iterable if the collection is non-empty, or
fails with the error `NoSuchElementException` if the collection is empty.

**When to Use**

This function is useful when you need to retrieve the first item from a
collection and want to handle the case where the collection might be empty
without causing an unhandled exception.

To import and use `head` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.head
```

**Example**

```ts
import { Effect } from "effect"

// Simulate an async operation
const fetchNumbers = Effect.succeed([1, 2, 3]).pipe(Effect.delay("100 millis"))

const program = Effect.gen(function* () {
  const firstElement = yield* Effect.head(fetchNumbers)
  console.log(firstElement)
})

Effect.runFork(program)
// Output: 1
```

**Signature**

```ts
export declare const head: <A, E, R>(self: Effect<Iterable<A>, E, R>) => Effect<A, Cause.NoSuchElementException | E, R>
```

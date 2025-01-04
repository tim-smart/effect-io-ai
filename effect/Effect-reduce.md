# reduce

Reduces an `Iterable<A>` using an effectual function `f`, working
sequentially from left to right.

**Details**

This function takes an iterable and applies a function `f` to each element in
the iterable. The function works sequentially, starting with an initial value
`zero` and then combining it with each element in the collection. The
provided function `f` is called for each element in the iterable, allowing
you to accumulate a result based on the current value and the element being
processed.

**When to Use**

The function is often used for operations like summing a collection of
numbers or combining results from multiple tasks. It ensures that operations
are performed one after the other, maintaining the order of the elements.

To import and use `reduce` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.reduce
```

**Example**

```ts
import { Console, Effect } from "effect"

const processOrder = (id: number) =>
  Effect.succeed({ id, price: 100 * id }).pipe(
    Effect.tap(() => Console.log(`Order ${id} processed`)),
    Effect.delay(500 - id * 100)
  )

const program = Effect.reduce([1, 2, 3, 4], 0, (acc, id, i) =>
  processOrder(id).pipe(Effect.map((order) => acc + order.price))
)

// Effect.runPromise(program).then(console.log)
// Output:
// Order 1 processed
// Order 2 processed
// Order 3 processed
// Order 4 processed
// 1000
```

**Signature**

```ts
export declare const reduce: {
  <Z, A, E, R>(zero: Z, f: (z: Z, a: A, i: number) => Effect<Z, E, R>): (elements: Iterable<A>) => Effect<Z, E, R>
  <A, Z, E, R>(elements: Iterable<A>, zero: Z, f: (z: Z, a: A, i: number) => Effect<Z, E, R>): Effect<Z, E, R>
}
```

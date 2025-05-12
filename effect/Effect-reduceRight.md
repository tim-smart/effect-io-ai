Package: `effect`<br />
Module: `Effect`<br />

## Effect.reduceRight

Reduces an `Iterable<A>` using an effectual function `f`, working
sequentially from right to left.

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

**Example**

```ts
import { Console, Effect } from "effect"

const processOrder = (id: number) =>
  Effect.succeed({ id, price: 100 * id })
    .pipe(Effect.tap(() => Console.log(`Order ${id} processed`)), Effect.delay(500 - (id * 100)))

const program = Effect.reduceRight(
  [1, 2, 3, 4],
  0,
  (id, acc, i) =>
    processOrder(id)
      .pipe(Effect.map((order) => acc + order.price))
)

Effect.runPromise(program).then(console.log)
// Output:
// Order 4 processed
// Order 3 processed
// Order 2 processed
// Order 1 processed
// 1000
```

**See**

- `reduce` for a similar function that works from left to right.

**Signature**

```ts
declare const reduceRight: { <A, Z, R, E>(zero: Z, f: (a: A, z: Z, i: number) => Effect<Z, E, R>): (elements: Iterable<A>) => Effect<Z, E, R>; <A, Z, R, E>(elements: Iterable<A>, zero: Z, f: (a: A, z: Z, i: number) => Effect<Z, E, R>): Effect<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1980)

Since v2.0.0
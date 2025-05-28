Package: `effect`<br />
Module: `Effect`<br />

## Effect.reduceWhile

Reduces an `Iterable<A>` using an effectual function `body`, working
sequentially from left to right, stopping the process early when the
predicate `while` is not satisfied.

**Details**

This function processes a collection of elements, applying a function `body`
to reduce them to a single value, starting from the first element. It checks
the value of the accumulator against a predicate (`while`). If at any point
the predicate returns `false`, the reduction stops, and the accumulated
result is returned.

**When to Use**

Use this function when you need to reduce a collection of elements, but only
continue the process as long as a certain condition holds true. For example,
if you want to sum values in a list but stop as soon as the sum exceeds a
certain threshold, you can use this function.

**Example**

```ts
import { Console, Effect } from "effect"

const processOrder = (id: number) =>
  Effect.succeed({ id, price: 100 * id })
    .pipe(Effect.tap(() => Console.log(`Order ${id} processed`)), Effect.delay(500 - (id * 100)))

const program = Effect.reduceWhile(
  [1, 2, 3, 4],
  0,
  {
    body: (acc, id, i) =>
      processOrder(id)
        .pipe(Effect.map((order) => acc + order.price)),
    while: (acc) => acc < 500
  }
)

Effect.runPromise(program).then(console.log)
// Output:
// Order 1 processed
// Order 2 processed
// Order 3 processed
// 600
```

**Signature**

```ts
declare const reduceWhile: { <Z, A, E, R>(zero: Z, options: { readonly while: Predicate<Z>; readonly body: (s: Z, a: A, i: number) => Effect<Z, E, R>; }): (elements: Iterable<A>) => Effect<Z, E, R>; <A, Z, E, R>(elements: Iterable<A>, zero: Z, options: { readonly while: Predicate<Z>; readonly body: (s: Z, a: A, i: number) => Effect<Z, E, R>; }): Effect<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1929)

Since v2.0.0
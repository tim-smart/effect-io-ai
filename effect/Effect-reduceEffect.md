## reduceEffect

Reduces an `Iterable<Effect<A, E, R>>` to a single effect.

**Details**

This function processes a collection of effects and combines them into one
single effect. It starts with an initial effect (`zero`) and applies a
function `f` to each element in the collection.

**Options**

The function also allows you to customize how the effects are handled by
specifying options such as concurrency, batching, and how finalizers behave.
These options provide flexibility in running the effects concurrently or
adjusting other execution details.

**Example**

```ts
import { Console, Effect } from "effect"

const processOrder = (id: number) =>
  Effect.succeed({ id, price: 100 * id })
    .pipe(Effect.tap(() => Console.log(`Order ${id} processed`)), Effect.delay(500 - (id * 100)))

const program = Effect.reduceEffect(
  [processOrder(1), processOrder(2), processOrder(3), processOrder(4)],
  Effect.succeed(0),
  (acc, order, i) => acc + order.price
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
declare const reduceEffect: { <Z, E, R, Eff extends Effect<any, any, any>>(zero: Effect<Z, E, R>, f: (z: NoInfer<Z>, a: Effect.Success<Eff>, i: number) => Z, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): (elements: Iterable<Eff>) => Effect<Z, E | Effect.Error<Eff>, R | Effect.Context<Eff>>; <Eff extends Effect<any, any, any>, Z, E, R>(elements: Iterable<Eff>, zero: Effect<Z, E, R>, f: (z: NoInfer<Z>, a: Effect.Success<Eff>, i: number) => Z, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<Z, E | Effect.Error<Eff>, R | Effect.Context<Eff>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1983)

Since v2.0.0
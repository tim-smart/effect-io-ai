## filter

Filters an iterable using the specified effectful predicate.

**Details**

This function filters a collection (an iterable) by applying an effectful
predicate.

The predicate is a function that takes an element and its index, and it
returns an effect that evaluates to a boolean.

The function processes each element in the collection and keeps only those
that satisfy the condition defined by the predicate.

**Options**

You can also adjust the behavior with options such as concurrency, batching,
or whether to negate the condition.

**When to Use**

This function allows you to selectively keep or remove elements based on a
condition that may involve asynchronous or side-effect-causing operations.

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4, 5]
const predicate = (n: number, i: number) => Effect.succeed(n % 2 === 0)

const program = Effect.gen(function*() {
  const result = yield* Effect.filter(numbers, predicate)
  console.log(result)
})

// Effect.runFork(program)
// Output: [2, 4]
```

**Signature**

```ts
declare const filter: { <A, E, R>(predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly negate?: boolean | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): (elements: Iterable<A>) => Effect<Array<A>, E, R>; <A, E, R>(elements: Iterable<A>, predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly negate?: boolean | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1372)

Since v2.0.0
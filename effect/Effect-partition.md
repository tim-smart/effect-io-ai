Package: `effect`<br />
Module: `Effect`<br />

## Effect.partition

Processes an iterable and applies an effectful function to each element,
categorizing the results into successes and failures.

**Details**

This function processes each element in the provided iterable by applying an
effectful function to it. The results are then categorized into two separate
lists: one for failures and another for successes. This separation allows you
to handle the two categories differently. Failures are collected in a list
without interrupting the processing of the remaining elements, so the
operation continues even if some elements fail. This is particularly useful
when you need to handle both successful and failed results separately,
without stopping the entire process on encountering a failure.

**When to Use**

Use this function when you want to process a collection of items and handle
errors or failures without interrupting the processing of other items. It's
useful when you need to distinguish between successful and failed results and
process them separately, for example, when logging errors while continuing to
work with valid data. The function ensures that failures are captured, while
successes are processed normally.

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<[string[], number[]], never, never>
//      ▼
const program = Effect.partition([0, 1, 2, 3, 4], (n) => {
  if (n % 2 === 0) {
    return Effect.succeed(n)
  } else {
    return Effect.fail(`${n} is not even`)
  }
})

Effect.runPromise(program).then(console.log, console.error)
// Output:
// [ [ '1 is not even', '3 is not even' ], [ 0, 2, 4 ] ]
```

**See**

- `validateAll` for a function that either collects all failures or all successes.
- `validateFirst` for a function that stops at the first success.

**Signature**

```ts
declare const partition: { <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): (elements: Iterable<A>) => Effect<[excluded: Array<E>, satisfying: Array<B>], never, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<[excluded: Array<E>, satisfying: Array<B>], never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1787)

Since v2.0.0
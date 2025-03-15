Package: `effect`<br />
Module: `Effect`<br />

## Effect.validateAll

Applies an effectful operation to each element in a collection while
collecting both successes and failures.

**Details**

This function allows you to apply an effectful operation to every item in a
collection.

Unlike `forEach`, which would stop at the first error, this function
continues processing all elements, accumulating both successes and failures.

**When to Use**

Use this function when you want to process every item in a collection, even
if some items fail. This is particularly useful when you need to perform
operations on all elements without halting due to an error.

Keep in mind that if there are any failures, **all successes will be lost**,
so this function is not suitable when you need to keep the successful results
in case of errors.

**Example**

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<number[], [string, ...string[]], never>
//      ▼
const program = Effect.validateAll([1, 2, 3, 4, 5], (n) => {
  if (n < 4) {
    return Console.log(`item ${n}`).pipe(Effect.as(n))
  } else {
    return Effect.fail(`${n} is not less that 4`)
  }
})

Effect.runPromiseExit(program).then(console.log)
// Output:
// item 1
// item 2
// item 3
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: [ '4 is not less that 4', '5 is not less that 4' ]
//   }
// }
```

**See**

- `forEach` for a similar function that stops at the first error.
- `partition` when you need to separate successes and failures
instead of losing successes with errors.

**Signature**

```ts
declare const validateAll: { <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard?: false | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): (elements: Iterable<A>) => Effect<Array<B>, RA.NonEmptyArray<E>, R>; <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard: true; readonly concurrentFinalizers?: boolean | undefined; }): (elements: Iterable<A>) => Effect<void, RA.NonEmptyArray<E>, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard?: false | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<Array<B>, RA.NonEmptyArray<E>, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard: true; readonly concurrentFinalizers?: boolean | undefined; }): Effect<void, RA.NonEmptyArray<E>, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2236)

Since v2.0.0
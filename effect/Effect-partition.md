# partition

The `partition` function processes an iterable and applies an
effectful function to each element, categorizing the results into successes
and failures.

This function returns a tuple where the first part contains all the failures
and the second part contains all the successes. It's useful when you need to
separate successful outcomes from failures, allowing you to handle them
differently. The function allows the entire collection to be processed
without halting on failures, and failures are collected in a separate list
while the successes are processed normally.

To import and use `partition` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.partition
```

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

**Signature**

```ts
export declare const partition: {
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<[excluded: Array<E>, satisfying: Array<B>], never, R>
  <A, B, E, R>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<[excluded: Array<E>, satisfying: Array<B>], never, R>
}
```

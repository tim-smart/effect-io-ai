# validateFirst

This function is similar to {@link validateAll} but with a key difference: it
returns the first successful result or all errors if none of the operations
succeed.

This function processes a collection of elements and applies an effectful
operation to each. Unlike {@link validateAll}, which accumulates both
successes and failures, `Effect.validateFirst` stops and returns the first
success it encounters. If no success occurs, it returns all accumulated
errors. This can be useful when you are interested in the first successful
result and want to avoid processing further once a valid result is found.

To import and use `validateFirst` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.validateFirst
```

**Example**

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<number, string[], never>
//      ▼
const program = Effect.validateFirst([1, 2, 3, 4, 5], (n) => {
  if (n < 4) {
    return Effect.fail(`${n} is not less that 4`)
  } else {
    return Console.log(`item ${n}`).pipe(Effect.as(n))
  }
})

Effect.runPromise(program).then(console.log, console.error)
// Output:
// item 4
// 4
```

**Signature**

```ts
export declare const validateFirst: {
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<B, Array<E>, R>
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
  ): Effect<B, Array<E>, R>
}
```

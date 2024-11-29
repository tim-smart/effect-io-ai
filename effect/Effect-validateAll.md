# validateAll

The `validateAll` function allows you to apply an effectful operation
to each element of a collection, while collecting both the successes and
failures. Unlike {@link forEach}, which would stop at the first error,
`validateAll` continues processing all elements, accumulating both
successes and failures.

This function transforms all elements of the collection using the provided
effectful operation. If any elements fail, the errors are captured and
included in the result, alongside the successful results. However, if there
are any errors, all successes are lost in the final result, which is an
important consideration when using this function.

To import and use `validateAll` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.validateAll
undefined

**Example**

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<number[], string[], never>
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

**Signature**

```ts
export declare const validateAll: {
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly discard?: false | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<Array<B>, Array<E>, R>
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): (elements: Iterable<A>) => Effect<void, Array<E>, R>
  <A, B, E, R>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly discard?: false | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<Array<B>, Array<E>, R>
  <A, B, E, R>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<B, E, R>,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): Effect<void, Array<E>, R>
}
```

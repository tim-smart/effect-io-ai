# forEach

Executes an effectful operation for each element in an `Iterable`.

**Details**

The `forEach` function applies a provided operation to each element in the
iterable, producing a new effect that returns an array of results.

If any effect fails, the iteration stops immediately (short-circuiting), and
the error is propagated.

**Concurrency**

The `concurrency` option controls how many operations are performed
concurrently. By default, the operations are performed sequentially.

**Discarding Results**

If the `discard` option is set to `true`, the intermediate results are not
collected, and the final result of the operation is `void`.

To import and use `forEach` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.forEach
```

**Example**

```ts
// Title: Applying Effects to Iterable Elements
import { Effect, Console } from "effect"

const result = Effect.forEach([1, 2, 3, 4, 5], (n, index) =>
  Console.log(`Currently at index ${index}`).pipe(Effect.as(n * 2))
)

Effect.runPromise(result).then(console.log)
// Output:
// Currently at index 0
// Currently at index 1
// Currently at index 2
// Currently at index 3
// Currently at index 4
// [ 2, 4, 6, 8, 10 ]
```

**Example**

```ts
// Title: Using discard to Ignore Results
import { Effect, Console } from "effect"

// Apply effects but discard the results
const result = Effect.forEach(
  [1, 2, 3, 4, 5],
  (n, index) => Console.log(`Currently at index ${index}`).pipe(Effect.as(n * 2)),
  { discard: true }
)

Effect.runPromise(result).then(console.log)
// Output:
// Currently at index 0
// Currently at index 1
// Currently at index 2
// Currently at index 3
// Currently at index 4
// undefined
```

**Signature**

```ts
export declare const forEach: {
  <B, E, R, S extends Iterable<any>>(
    f: (a: RA.ReadonlyArray.Infer<S>, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly discard?: false | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (self: S) => Effect<RA.ReadonlyArray.With<S, B>, E, R>
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): (self: Iterable<A>) => Effect<void, E, R>
  <B, E, R, S extends Iterable<any>>(
    self: S,
    f: (a: RA.ReadonlyArray.Infer<S>, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly discard?: false | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<RA.ReadonlyArray.With<S, B>, E, R>
  <A, B, E, R>(
    self: Iterable<A>,
    f: (a: A, i: number) => Effect<B, E, R>,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): Effect<void, E, R>
}
```
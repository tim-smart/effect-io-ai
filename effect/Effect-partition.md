# partition

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in a tupled fashion.

To import and use `partition` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.partition
```

**Signature**

```ts
export declare const partition: {
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
      | undefined
  ): (elements: Iterable<A>) => Effect<[excluded: E[], satisfying: B[]], never, R>
  <A, B, E, R>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
      | undefined
  ): Effect<[excluded: E[], satisfying: B[]], never, R>
}
```

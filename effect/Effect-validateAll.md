# validateAll

Feeds elements of type `A` to `f` and accumulates all errors in error
channel or successes in success channel.

This combinator is lossy meaning that if there are errors all successes
will be lost. To retain all information please use `partition`.

To import and use `validateAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.validateAll
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

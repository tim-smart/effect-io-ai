# exists

Determines whether any element of the `Iterable<A>` satisfies the effectual
predicate `f`.

To import and use `exists` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.exists
undefined

**Signature**

```ts
export declare const exists: {
  <A, E, R>(
    f: (a: A, i: number) => Effect<boolean, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<boolean, E, R>
  <A, E, R>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<boolean, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<boolean, E, R>
}
```

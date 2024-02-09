# filter

Filters the collection using the specified effectful predicate.

To import and use `filter` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.filter
```

**Signature**

```ts
export declare const filter: {
  <A, E, R>(
    f: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly negate?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<A[], E, R>
  <A, E, R>(
    elements: Iterable<A>,
    f: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly negate?: boolean | undefined
        }
      | undefined
  ): Effect<A[], E, R>
}
```

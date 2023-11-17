# exists

Determines whether any element of the `Iterable<A>` satisfies the effectual
predicate `f`.

To import and use `exists` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.exists
```

**Signature**

```ts
export declare const exists: {
  <R, E, A>(
    f: (a: A, i: number) => Effect<R, E, boolean>,
    options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): (elements: Iterable<A>) => Effect<R, E, boolean>
  <R, E, A>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<R, E, boolean>,
    options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): Effect<R, E, boolean>
}
```

# reduceEffect

Reduces an `Iterable<Effect<A, E, R>>` to a single effect.

To import and use `reduceEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.reduceEffect
```

**Signature**

```ts
export declare const reduceEffect: {
  <A, E, R>(
    zero: Effect<A, E, R>,
    f: (acc: NoInfer<A>, a: NoInfer<A>, i: number) => A,
    options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): (elements: Iterable<Effect<A, E, R>>) => Effect<A, E, R>
  <A, E, R>(
    elements: Iterable<Effect<A, E, R>>,
    zero: Effect<A, E, R>,
    f: (acc: NoInfer<A>, a: NoInfer<A>, i: number) => A,
    options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): Effect<A, E, R>
}
```

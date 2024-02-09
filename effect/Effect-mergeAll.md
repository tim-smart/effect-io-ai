# mergeAll

Merges an `Iterable<Effect<A, E, R>>` to a single effect, working
sequentially.

To import and use `mergeAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.mergeAll
```

**Signature**

```ts
export declare const mergeAll: {
  <Z, A>(
    zero: Z,
    f: (z: Z, a: A, i: number) => Z,
    options?:
      | { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
      | undefined
  ): <E, R>(elements: Iterable<Effect<A, E, R>>) => Effect<Z, E, R>
  <A, E, R, Z>(
    elements: Iterable<Effect<A, E, R>>,
    zero: Z,
    f: (z: Z, a: A, i: number) => Z,
    options?:
      | { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
      | undefined
  ): Effect<Z, E, R>
}
```

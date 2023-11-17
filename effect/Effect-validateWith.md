# validateWith

Sequentially zips this effect with the specified effect using the specified
combiner function. Combines the causes in case both effect fail.

To import and use `validateWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.validateWith
```

**Signature**

```ts
export declare const validateWith: {
  <A, R1, E1, B, C>(
    that: Effect<R1, E1, B>,
    f: (a: A, b: B) => C,
    options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): <R, E>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | E, C>
  <R, E, A, R1, E1, B, C>(
    self: Effect<R, E, A>,
    that: Effect<R1, E1, B>,
    f: (a: A, b: B) => C,
    options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): Effect<R | R1, E | E1, C>
}
```

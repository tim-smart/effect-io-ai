# validate

Sequentially zips the this result with the specified result. Combines both
`Cause`s when both effects fail.

To import and use `validate` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.validate
```

**Signature**

```ts
export declare const validate: {
  <R1, E1, B>(
    that: Effect<R1, E1, B>,
    options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | E, [A, B]>
  <R, E, A, R1, E1, B>(
    self: Effect<R, E, A>,
    that: Effect<R1, E1, B>,
    options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined }
  ): Effect<R | R1, E | E1, [A, B]>
}
```

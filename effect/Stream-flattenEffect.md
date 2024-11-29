# flattenEffect

Flattens `Effect` values into the stream's structure, preserving all
information about the effect.

To import and use `flattenEffect` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.flattenEffect
undefined

**Signature**

```ts
export declare const flattenEffect: {
  (
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined }
      | undefined
  ): <A, E2, R2, E, R>(self: Stream<Effect.Effect<A, E2, R2>, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E2, R2, E, R>(
    self: Stream<Effect.Effect<A, E2, R2>, E, R>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined }
      | undefined
  ): Stream<A, E2 | E, R2 | R>
}
```

# diffFiberRefs

Returns a new workflow that executes this one and captures the changes in
`FiberRef` values.

To import and use `diffFiberRefs` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.diffFiberRefs
```

**Signature**

```ts
export declare const diffFiberRefs: <R, E, A>(
  self: Effect<R, E, A>
) => Effect<R, E, readonly [FiberRefsPatch.FiberRefsPatch, A]>
```

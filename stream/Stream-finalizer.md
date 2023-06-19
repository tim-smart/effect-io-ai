# finalizer

Creates a one-element stream that never fails and executes the finalizer
when it ends.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const finalizer: <R, _>(finalizer: Effect.Effect<R, never, _>) => Stream<R, never, void>
```

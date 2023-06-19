# flattenExit

Flattens `Exit` values. `Exit.Failure` values translate to stream
failures while `Exit.Success` values translate to stream elements.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenExit: <R, E, E2, A>(self: Stream<R, E, Exit.Exit<E2, A>>) => Stream<R, E | E2, A>
```

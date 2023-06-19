# acquireRelease

Creates a stream from a single value that will get cleaned up after the
stream is consumed.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const acquireRelease: <R, E, A, R2, _>(
  acquire: Effect.Effect<R, E, A>,
  release: (resource: A, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<R2, never, _>
) => Stream<R | R2, E, A>
```

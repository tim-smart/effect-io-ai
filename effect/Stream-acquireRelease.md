# acquireRelease

Creates a stream from a single value that will get cleaned up after the
stream is consumed.

To import and use `acquireRelease` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.acquireRelease
```

**Signature**

```ts
export declare const acquireRelease: <R, E, A, R2, _>(
  acquire: Effect.Effect<R, E, A>,
  release: (resource: A, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<R2, never, _>
) => Stream<R | R2, E, A>
```

# acquireRelease

Creates a stream from a single value that will get cleaned up after the
stream is consumed.

To import and use `acquireRelease` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.acquireRelease
```

**Signature**

```ts
export declare const acquireRelease: <A, E, R, R2, X>(
  acquire: Effect.Effect<A, E, R>,
  release: (resource: A, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<X, never, R2>
) => Stream<A, E, R | R2>
```

# scoped

Creates a single-valued stream from a scoped resource.

To import and use `scoped` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.scoped
```

**Signature**

```ts
export declare const scoped: <R, E, A>(
  effect: Effect.Effect<Scope.Scope | R, E, A>
) => Stream<Exclude<R, Scope.Scope>, E, A>
```
# unwrapScoped

Creates a stream produced from a scoped `Effect`.

To import and use `unwrapScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.unwrapScoped
```

**Signature**

```ts
export declare const unwrapScoped: <A, E2, R2, E, R>(
  effect: Effect.Effect<Stream<A, E2, R2>, E, R>
) => Stream<A, E2 | E, R2 | Exclude<R, Scope.Scope>>
```

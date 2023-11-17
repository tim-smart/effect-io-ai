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
export declare const unwrapScoped: <R, E, R2, E2, A>(
  effect: Effect.Effect<R, E, Stream<R2, E2, A>>
) => Stream<R2 | Exclude<R, Scope.Scope>, E | E2, A>
```

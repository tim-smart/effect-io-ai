# scoped

Creates a single-valued stream from a scoped resource.

To import and use `scoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.scoped
```

**Signature**

```ts
export declare const scoped: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, Exclude<R, Scope.Scope>>
```

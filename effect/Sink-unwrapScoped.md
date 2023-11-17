# unwrapScoped

Creates a sink produced from a scoped effect.

To import and use `unwrapScoped` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.unwrapScoped
```

**Signature**

```ts
export declare const unwrapScoped: <R, E, In, L, Z>(
  effect: Effect.Effect<R, E, Sink<R, E, In, L, Z>>
) => Sink<Exclude<R, Scope.Scope>, E, In, L, Z>
```

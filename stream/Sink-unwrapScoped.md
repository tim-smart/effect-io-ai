# unwrapScoped

Creates a sink produced from a scoped effect.

To import and use `unwrapScoped` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.unwrapScoped
```

**Signature**

```ts
export declare const unwrapScoped: <R, E, In, L, Z>(
  effect: Effect.Effect<Scope.Scope | R, E, Sink<R, E, In, L, Z>>
) => Sink<R, E, In, L, Z>
```

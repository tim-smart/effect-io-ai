# unwrapScopedWith

Constructs a `Sink` from a function which receives a `Scope` and returns
an effect that will result in a `Sink` if successful.

To import and use `unwrapScopedWith` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.unwrapScopedWith
```

**Signature**

```ts
export declare const unwrapScopedWith: <A, In, L, E, R>(
  f: (scope: Scope.Scope) => Effect.Effect<Sink<A, In, L, E, R>, E, R>
) => Sink<A, In, L, E, R>
```

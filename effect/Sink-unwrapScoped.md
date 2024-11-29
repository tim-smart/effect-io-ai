# unwrapScoped

Creates a sink produced from a scoped effect.

To import and use `unwrapScoped` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.unwrapScoped
undefined

**Signature**

```ts
export declare const unwrapScoped: <A, In, L, E, R>(
  effect: Effect.Effect<Sink<A, In, L, E, R>, E, R>
) => Sink<A, In, L, E, Exclude<R, Scope.Scope>>
```

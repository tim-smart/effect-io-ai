# contextWithEffect

Accesses the context of the stream in the context of an effect.

To import and use `contextWithEffect` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.contextWithEffect
undefined

**Signature**

```ts
export declare const contextWithEffect: <R0, A, E, R>(
  f: (env: Context.Context<R0>) => Effect.Effect<A, E, R>
) => Stream<A, E, R0 | R>
```

# contextWithEffect

Accesses the context of the sink in the context of an effect.

To import and use `contextWithEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.contextWithEffect
undefined

**Signature**

```ts
export declare const contextWithEffect: <R0, A, E, R>(
  f: (context: Context.Context<R0>) => Effect.Effect<A, E, R>
) => Sink<A, unknown, never, E, R0 | R>
```

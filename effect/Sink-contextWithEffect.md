# contextWithEffect

Accesses the context of the sink in the context of an effect.

To import and use `contextWithEffect` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.contextWithEffect
```

**Signature**

```ts
export declare const contextWithEffect: <R, R2, E, Z>(
  f: (context: Context.Context<R>) => Effect.Effect<R2, E, Z>
) => Sink<R | R2, E, unknown, never, Z>
```

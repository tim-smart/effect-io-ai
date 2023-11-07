# contextWithEffect

Effectually accesses the context of the effect.

To import and use `contextWithEffect` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.contextWithEffect
```

**Signature**

```ts
export declare const contextWithEffect: <R, R0, E, A>(
  f: (context: Context.Context<R0>) => Effect<R, E, A>
) => Effect<R | R0, E, A>
```

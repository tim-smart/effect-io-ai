# contextWithEffect

Effectually accesses the context of the effect.

To import and use `contextWithEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.contextWithEffect
```

**Signature**

```ts
export declare const contextWithEffect: <R0, A, E, R>(
  f: (context: Context.Context<R0>) => Effect<A, E, R>
) => Effect<A, E, R | R0>
```

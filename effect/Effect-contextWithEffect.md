# contextWithEffect

Accesses the context and performs an effectful transformation.

**Details**

This function retrieves the context and allows you to transform it
effectually using another effect. It is useful when the transformation
involves asynchronous or effectful operations.

To import and use `contextWithEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.contextWithEffect
```

**Signature**

```ts
export declare const contextWithEffect: <R2, A, E, R>(
  f: (context: Context.Context<R2>) => Effect<A, E, R>
) => Effect<A, E, R | R2>
```

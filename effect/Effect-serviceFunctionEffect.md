# serviceFunctionEffect

Creates a function that uses a service from the context to produce an effect.

To import and use `serviceFunctionEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.serviceFunctionEffect
```

**Signature**

```ts
export declare const serviceFunctionEffect: <T extends Effect<any, any, any>, Args extends Array<any>, A, E, R>(
  getService: T,
  f: (_: Effect.Success<T>) => (...args: Args) => Effect<A, E, R>
) => (...args: Args) => Effect<A, E | Effect.Error<T>, R | Effect.Context<T>>
```

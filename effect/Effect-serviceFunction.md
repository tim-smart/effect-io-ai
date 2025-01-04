# serviceFunction

Creates a function that uses a service from the context to produce a value.

To import and use `serviceFunction` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.serviceFunction
```

**Signature**

```ts
export declare const serviceFunction: <T extends Effect<any, any, any>, Args extends Array<any>, A>(
  getService: T,
  f: (_: Effect.Success<T>) => (...args: Args) => A
) => (...args: Args) => Effect<A, Effect.Error<T>, Effect.Context<T>>
```

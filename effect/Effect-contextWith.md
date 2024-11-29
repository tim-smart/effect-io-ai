# contextWith

Accesses the context of the effect.

To import and use `contextWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.contextWith
undefined

**Signature**

```ts
export declare const contextWith: <R, A>(f: (context: Context.Context<R>) => A) => Effect<A, never, R>
```

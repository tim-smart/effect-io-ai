# contextWith

Accesses the context and applies a transformation function.

**Details**

This function retrieves the context of the effect and applies a pure
transformation function to it. The result of the transformation is then
returned within the effect.

To import and use `contextWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.contextWith
```

**Signature**

```ts
export declare const contextWith: <R, A>(f: (context: Context.Context<R>) => A) => Effect<A, never, R>
```

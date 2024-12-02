# scopedWith

Use a function that receives a scope and returns an effect to emit an output
element. The output element will be the result of the returned effect, if
successful.

To import and use `scopedWith` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.scopedWith
undefined

**Signature**

```ts
export declare const scopedWith: <A, E, R>(f: (scope: Scope.Scope) => Effect.Effect<A, E, R>) => Stream<A, E, R>
```

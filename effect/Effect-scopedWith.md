# scopedWith

Creates a `Scope`, passes it to the specified effectful function, and then
closes the scope as soon as the effect is complete (whether through success,
failure, or interruption).

To import and use `scopedWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scopedWith
```

**Signature**

```ts
export declare const scopedWith: <A, E, R>(f: (scope: Scope.Scope) => Effect<A, E, R>) => Effect<A, E, R>
```

# scopeWith

Accesses the current scope and uses it to perform the specified effect.

To import and use `scopeWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.scopeWith
undefined

**Signature**

```ts
export declare const scopeWith: <A, E, R>(f: (scope: Scope.Scope) => Effect<A, E, R>) => Effect<A, E, R | Scope.Scope>
```

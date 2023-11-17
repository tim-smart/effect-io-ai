# scopeWith

Accesses the current scope and uses it to perform the specified effect.

To import and use `scopeWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scopeWith
```

**Signature**

```ts
export declare const scopeWith: <R, E, A>(f: (scope: Scope.Scope) => Effect<R, E, A>) => Effect<Scope.Scope | R, E, A>
```

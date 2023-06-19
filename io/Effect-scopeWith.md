# scopeWith

Accesses the current scope and uses it to perform the specified effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const scopeWith: <R, E, A>(f: (scope: Scope.Scope) => Effect<R, E, A>) => Effect<Scope.Scope | R, E, A>
```

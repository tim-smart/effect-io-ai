# scopeWith

Accesses the current scope and uses it to perform the specified effect.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const scopeWith: <R, E, A>(f: (scope: Scope.Scope) => Effect<R, E, A>) => Effect<Scope.Scope | R, E, A>
```

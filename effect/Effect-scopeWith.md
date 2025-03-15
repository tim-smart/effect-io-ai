Package: `effect`<br />
Module: `Effect`<br />

## Effect.scopeWith

Accesses the current scope and uses it to perform the specified effect.

**Signature**

```ts
declare const scopeWith: <A, E, R>(f: (scope: Scope.Scope) => Effect<A, E, R>) => Effect<A, E, R | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5996)

Since v2.0.0
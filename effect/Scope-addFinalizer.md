Package: `effect`<br />
Module: `Scope`<br />

## Scope.addFinalizer

Adds a finalizer to this scope. The finalizer is guaranteed to be run when
the scope is closed. Use this when the finalizer does not need to know the
`Exit` value that the scope is closed with.

**See**

- `addFinalizerExit`

**Signature**

```ts
declare const addFinalizer: (self: Scope, finalizer: Effect.Effect<unknown>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L127)

Since v2.0.0
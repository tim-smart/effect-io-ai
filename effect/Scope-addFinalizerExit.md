Package: `effect`<br />
Module: `Scope`<br />

## Scope.addFinalizerExit

Adds a finalizer to this scope. The finalizer receives the `Exit` value
when the scope is closed, allowing it to perform different actions based
on the exit status.

**See**

- `addFinalizer`

**Signature**

```ts
declare const addFinalizerExit: (self: Scope, finalizer: Scope.Finalizer) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L140)

Since v2.0.0
Package: `effect`<br />
Module: `Effect`<br />

## Effect.abortSignal

Creates an AbortSignal that is managed by the provided scope.

**When to use**

Use to obtain a scope-managed `AbortSignal` for APIs that accept cancellation
through a signal.

**Details**

Each acquisition creates a fresh `AbortController`. Closing the owning scope
runs a finalizer that aborts the controller and the effect succeeds with the
controller's signal.

**Gotchas**

The signal is aborted when its owning scope closes, so avoid keeping it for
work that outlives that scope.

**See**

- `scoped` for binding resource lifetime to a scope

**Signature**

```ts
declare const abortSignal: Effect<AbortSignal, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7375)

Since v4.0.0
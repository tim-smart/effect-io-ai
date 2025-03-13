Package: `effect`<br />
Module: `Scope`<br />

## Scope.Scope.Finalizer

A finalizer function that takes an `Exit` value and returns an `Effect`.

**Signature**

```ts
type Finalizer = (exit: Exit.Exit<unknown, unknown>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L107)

Since v2.0.0
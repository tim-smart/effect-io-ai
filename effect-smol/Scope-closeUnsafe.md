Package: `effect`<br />
Module: `Scope`<br />

## Scope.closeUnsafe

Unsafely transitions a scope to `Closed` with the provided exit value.

Returns an effect that runs registered finalizers, or `undefined` when the
scope was already closed or no finalizers need to run. Prefer `close` unless
you are implementing lower-level scope machinery and can correctly run the
returned effect.

**Signature**

```ts
declare const closeUnsafe: <A, E>(self: Scope, exit_: Exit<A, E>) => Effect<void, never, never> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L491)

Since v4.0.0
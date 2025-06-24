Package: `effect`<br />
Module: `Effect`<br />

## Effect.runtime

Returns an effect that accesses the runtime, which can be used to (unsafely)
execute tasks.

**When to Use**

This is useful for integration with legacy code that must call back into
Effect code.

**Signature**

```ts
declare const runtime: <R = never>() => Effect<Runtime.Runtime<R>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11604)

Since v2.0.0
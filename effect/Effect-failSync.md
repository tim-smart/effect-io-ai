Package: `effect`<br />
Module: `Effect`<br />

## Effect.failSync

Creates an `Effect` that fails with the specified error, evaluated lazily.

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2572)

Since v2.0.0
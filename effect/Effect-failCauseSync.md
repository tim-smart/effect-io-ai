Package: `effect`<br />
Module: `Effect`<br />

## Effect.failCauseSync

Creates an `Effect` that fails with the specified `Cause`, evaluated lazily.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2599)

Since v2.0.0
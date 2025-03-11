## failCauseSync

Creates an `Effect` that fails with the specified `Cause`, evaluated lazily.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2534)

Since v2.0.0
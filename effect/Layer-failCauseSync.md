## failCauseSync

Constructs a layer that fails with the specified cause.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Layer<unknown, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L345)

Since v2.0.0
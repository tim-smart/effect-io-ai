Package: `@effect/cluster`<br />
Module: `Sharding`<br />

## Sharding.registerSingleton

Start a computation that is guaranteed to run only on a single pod.
Each pod should call `registerSingleton` but only a single pod will actually run it at any given time.

**Signature**

```ts
declare const registerSingleton: <R>(name: string, run: Effect.Effect<void, never, R>) => Effect.Effect<void, never, Sharding | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L129)

Since v1.0.0
## awaitEmpty

Wait for the FiberMap to be empty.

**Signature**

```ts
declare const awaitEmpty: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L647)

Since v3.13.0
Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.has

Check if a key exists in the FiberMap.

**Signature**

```ts
declare const has: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<boolean>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L378)

Since v2.0.0
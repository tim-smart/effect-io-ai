Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.remove

Remove a fiber from the FiberMap, interrupting it if it exists.

**Signature**

```ts
declare const remove: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L392)

Since v2.0.0
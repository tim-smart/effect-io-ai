## unsafeHas

Check if a key exists in the FiberMap.

**Signature**

```ts
declare const unsafeHas: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => boolean; <K, A, E>(self: FiberMap<K, A, E>, key: K): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L363)

Since v2.0.0
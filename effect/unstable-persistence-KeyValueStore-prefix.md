Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.prefix

Returns a view of a `KeyValueStore` that prepends the given prefix to every
key.

**Signature**

```ts
declare const prefix: { (prefix: string): (self: KeyValueStore) => KeyValueStore; (self: KeyValueStore, prefix: string): KeyValueStore; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyValueStore.ts#L297)

Since v4.0.0
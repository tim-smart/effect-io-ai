## layerStorage

Creates an KeyValueStorage from an instance of the `Storage` api.

**See**

- https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API

**Signature**

```ts
declare const layerStorage: (evaluate: LazyArg<Storage>) => Layer.Layer<KeyValueStore>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/KeyValueStore.ts#L240)

Since v1.0.0
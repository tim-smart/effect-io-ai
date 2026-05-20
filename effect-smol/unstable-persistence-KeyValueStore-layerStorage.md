Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.layerStorage

Provides a `KeyValueStore` backed by a Web `Storage` instance such as
`localStorage` or `sessionStorage`.

**See**

- https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API

**Signature**

```ts
declare const layerStorage: (evaluate: LazyArg<Storage>) => Layer.Layer<KeyValueStore>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L806)

Since v4.0.0
Package: `effect`<br />
Module: `Etag`<br />

## Etag.layer

Layer that provides a `Generator` which produces strong ETags from file size
and modification time metadata.

**When to use**

Use when you need the `Generator` service to produce strong ETags and file
size plus modification time reliably change for every byte-level change.

**Gotchas**

This layer marks metadata-derived tags as strong. If the underlying storage
can update file contents without changing the recorded size or modification
time, those tags can stop representing byte-for-byte identity.

**See**

- `layerWeak` for weak metadata-derived ETags when byte-for-byte identity is not required
- `Generator` for the service provided by this layer

**Signature**

```ts
declare const layer: Layer.Layer<Generator, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Etag.ts#L115)

Since v4.0.0
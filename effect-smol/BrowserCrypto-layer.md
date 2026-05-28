Package: `@effect/platform-browser`<br />
Module: `BrowserCrypto`<br />

## BrowserCrypto.layer

Layer that directly interfaces with the Web Crypto API.

**When to use**

Use to provide cryptographic randomness, UUID generation, and digest
operations in browser runtimes backed by `globalThis.crypto`.

**Details**

Random bytes are produced with `crypto.getRandomValues`. Digests are computed
with `crypto.subtle.digest` and returned as `Uint8Array` values.

**Gotchas**

The layer dies if the Web Crypto object is unavailable. Digest operations
fail with `PlatformError` when `crypto.subtle.digest` is unavailable or the
browser rejects the digest request.

**Signature**

```ts
declare const layer: Layer.Layer<EffectCrypto.Crypto, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserCrypto.ts#L91)

Since v1.0.0
Package: `@effect/platform-browser`<br />
Module: `BrowserCrypto`<br />

## BrowserCrypto.WebCrypto

Provides Browser Web Crypto APIs used by the Crypto service implementation.

**When to use**

Use to override the browser `Crypto` object used by the platform crypto
layer.

**Signature**

```ts
declare const WebCrypto: Context.Reference<Crypto>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserCrypto.ts#L65)

Since v1.0.0
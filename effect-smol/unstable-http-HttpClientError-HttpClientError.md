Package: `effect`<br />
Module: `HttpClientError`<br />

## HttpClientError.HttpClientError

Error wrapper for HTTP client failures, exposing the failed request and the optional response through its `reason`.

**Signature**

```ts
declare class HttpClientError { constructor(props: {
    readonly reason: HttpClientErrorReason
  }) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientError.ts#L34)

Since v4.0.0
Package: `effect`<br />
Module: `HttpClientError`<br />

## HttpClientError.RequestError

Union of HTTP client errors that occur before a response is available.

**Signature**

```ts
type RequestError = TransportError | EncodeError | InvalidUrlError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientError.ts#L277)

Since v4.0.0
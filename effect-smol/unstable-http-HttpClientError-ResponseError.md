Package: `effect`<br />
Module: `HttpClientError`<br />

## HttpClientError.ResponseError

Union of HTTP client errors that include an HTTP response.

**Signature**

```ts
type ResponseError = StatusCodeError | DecodeError | EmptyBodyError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientError.ts#L305)

Since v4.0.0
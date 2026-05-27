Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.HttpClientResponse

Model of an HTTP client response, including the original request, status, cookies, headers, and body accessors.

**Signature**

```ts
export interface HttpClientResponse extends HttpIncomingMessage.HttpIncomingMessage<Error.HttpClientError>, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly request: HttpClientRequest.HttpClientRequest
  readonly status: number
  readonly cookies: Cookies.Cookies
  readonly formData: Effect.Effect<FormData, Error.HttpClientError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L94)

Since v4.0.0
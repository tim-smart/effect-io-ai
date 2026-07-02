Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.HttpClientRequest

Immutable model of an outgoing HTTP client request, including its method, URL components, headers, and body.

**Signature**

```ts
export interface HttpClientRequest extends Inspectable.Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly method: HttpMethod
  readonly url: string
  readonly urlParams: UrlParams.UrlParams
  readonly hash: Option.Option<string>
  readonly headers: Headers.Headers
  readonly body: HttpBody.HttpBody
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L50)

Since v4.0.0
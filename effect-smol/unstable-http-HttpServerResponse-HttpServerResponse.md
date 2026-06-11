Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.HttpServerResponse

Server-side HTTP response model.

**Details**

A response contains a status, optional status text, headers, cookies, and an
HTTP body that can later be converted to platform-specific response types.

**Signature**

```ts
export interface HttpServerResponse extends Inspectable.Inspectable, Pipeable, ErrorReporter.Reportable {
  readonly [TypeId]: typeof TypeId
  readonly status: number
  readonly statusText?: string | undefined
  readonly headers: Headers.Headers
  readonly cookies: Cookies.Cookies
  readonly body: Body.HttpBody
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L53)

Since v4.0.0
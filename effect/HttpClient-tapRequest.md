# tapRequest

Performs an additional effect on the request before sending it.

To import and use `tapRequest` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.tapRequest
```

**Signature**

```ts
export declare const tapRequest: {
  <_, E2, R2>(
    f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<_, E2, R2>
  ): <E, R>(self: HttpClient<E, R>) => HttpClient<E | E2, R | R2>
  <E, R, _, E2, R2>(
    self: HttpClient<E, R>,
    f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<_, E2, R2>
  ): HttpClient<E | E2, R | R2>
}
```

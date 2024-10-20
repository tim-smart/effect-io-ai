# tap

Performs an additional effect after a successful request.

To import and use `tap` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.tap
```

**Signature**

```ts
export declare const tap: {
  <_, E2, R2>(
    f: (response: ClientResponse.HttpClientResponse) => Effect.Effect<_, E2, R2>
  ): <E, R>(self: HttpClient<E, R>) => HttpClient<E | E2, R | R2>
  <E, R, _, E2, R2>(
    self: HttpClient<E, R>,
    f: (response: ClientResponse.HttpClientResponse) => Effect.Effect<_, E2, R2>
  ): HttpClient<E | E2, R | R2>
}
```

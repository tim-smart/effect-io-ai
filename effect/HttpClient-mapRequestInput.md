# mapRequestInput

Prepends a transformation of the request object before sending it.

To import and use `mapRequestInput` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.mapRequestInput
```

**Signature**

```ts
export declare const mapRequestInput: {
  (
    f: (a: ClientRequest.HttpClientRequest) => ClientRequest.HttpClientRequest
  ): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>
  <E, R>(
    self: HttpClient.With<E, R>,
    f: (a: ClientRequest.HttpClientRequest) => ClientRequest.HttpClientRequest
  ): HttpClient.With<E, R>
}
```

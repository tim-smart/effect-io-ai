# mapRequest

Appends a transformation of the request object before sending it.

To import and use `mapRequest` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.mapRequest
```

**Signature**

```ts
export declare const mapRequest: {
  (
    f: (a: ClientRequest.HttpClientRequest) => ClientRequest.HttpClientRequest
  ): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>
  <E, R>(
    self: HttpClient.With<E, R>,
    f: (a: ClientRequest.HttpClientRequest) => ClientRequest.HttpClientRequest
  ): HttpClient.With<E, R>
}
```

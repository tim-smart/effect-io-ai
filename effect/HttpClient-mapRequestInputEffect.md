# mapRequestInputEffect

Prepends an effectful transformation of the request object before sending it.

To import and use `mapRequestInputEffect` from the "HttpClient" module:

ts
import \* as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.mapRequestInputEffect
undefined

**Signature**

```ts
export declare const mapRequestInputEffect: {
  <E2, R2>(
    f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<ClientRequest.HttpClientRequest, E2, R2>
  ): <E, R>(self: HttpClient<E, R>) => HttpClient<E | E2, R | R2>
  <E, R, E2, R2>(
    self: HttpClient<E, R>,
    f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<ClientRequest.HttpClientRequest, E2, R2>
  ): HttpClient<E | E2, R | R2>
}
```

# mapRequestEffect

Appends an effectful transformation of the request object before sending it.

To import and use `mapRequestEffect` from the "HttpClient" module:

ts
import \* as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.mapRequestEffect
undefined

**Signature**

```ts
export declare const mapRequestEffect: {
  <E2, R2>(
    f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<ClientRequest.HttpClientRequest, E2, R2>
  ): <E, R>(self: HttpClient<E, R>) => HttpClient<E | E2, R | R2>
  <E, R, E2, R2>(
    self: HttpClient<E, R>,
    f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<ClientRequest.HttpClientRequest, E2, R2>
  ): HttpClient<E | E2, R | R2>
}
```

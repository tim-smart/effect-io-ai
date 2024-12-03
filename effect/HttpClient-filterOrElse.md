# filterOrElse

Filters the result of a response, or runs an alternative effect if the predicate fails.

To import and use `filterOrElse` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.filterOrElse
```

**Signature**

```ts
export declare const filterOrElse: {
  <E2, R2>(
    predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>,
    orElse: (response: ClientResponse.HttpClientResponse) => Effect.Effect<ClientResponse.HttpClientResponse, E2, R2>
  ): <E, R>(self: HttpClient<E, R>) => HttpClient<E2 | E, R2 | R>
  <E, R, E2, R2>(
    self: HttpClient<E, R>,
    predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>,
    orElse: (response: ClientResponse.HttpClientResponse) => Effect.Effect<ClientResponse.HttpClientResponse, E2, R2>
  ): HttpClient<E2 | E, R2 | R>
}
```

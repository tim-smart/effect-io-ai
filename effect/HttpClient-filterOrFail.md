# filterOrFail

Filters the result of a response, or throws an error if the predicate fails.

To import and use `filterOrFail` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.filterOrFail
```

**Signature**

```ts
export declare const filterOrFail: {
  <E2>(
    predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>,
    orFailWith: (response: ClientResponse.HttpClientResponse) => E2
  ): <E, R>(self: HttpClient<E, R>) => HttpClient<E2 | E, R>
  <E, R, E2>(
    self: HttpClient<E, R>,
    predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>,
    orFailWith: (response: ClientResponse.HttpClientResponse) => E2
  ): HttpClient<E2 | E, R>
}
```
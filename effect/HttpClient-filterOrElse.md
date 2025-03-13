Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.filterOrElse

Filters the result of a response, or runs an alternative effect if the predicate fails.

**Signature**

```ts
declare const filterOrElse: { <E2, R2>(predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>, orElse: (response: ClientResponse.HttpClientResponse) => Effect.Effect<ClientResponse.HttpClientResponse, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E2 | E, R2 | R>; <E, R, E2, R2>(self: HttpClient.With<E, R>, predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>, orElse: (response: ClientResponse.HttpClientResponse) => Effect.Effect<ClientResponse.HttpClientResponse, E2, R2>): HttpClient.With<E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L294)

Since v1.0.0
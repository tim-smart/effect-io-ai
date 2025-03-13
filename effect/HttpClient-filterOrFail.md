Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.filterOrFail

Filters the result of a response, or throws an error if the predicate fails.

**Signature**

```ts
declare const filterOrFail: { <E2>(predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>, orFailWith: (response: ClientResponse.HttpClientResponse) => E2): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E2 | E, R>; <E, R, E2>(self: HttpClient.With<E, R>, predicate: Predicate.Predicate<ClientResponse.HttpClientResponse>, orFailWith: (response: ClientResponse.HttpClientResponse) => E2): HttpClient.With<E2 | E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L312)

Since v1.0.0
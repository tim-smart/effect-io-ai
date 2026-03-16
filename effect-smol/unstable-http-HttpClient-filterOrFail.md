Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.filterOrFail

Filters the result of a response, or throws an error if the predicate fails.

**Signature**

```ts
declare const filterOrFail: { <B extends HttpClientResponse.HttpClientResponse, E2>(refinement: Predicate.Refinement<NoInfer<HttpClientResponse.HttpClientResponse>, B>, orFailWith: (response: NoInfer<HttpClientResponse.HttpClientResponse>) => E2): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E2 | E, R>; <E2>(predicate: Predicate.Predicate<NoInfer<HttpClientResponse.HttpClientResponse>>, orFailWith: (response: NoInfer<HttpClientResponse.HttpClientResponse>) => E2): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E2 | E, R>; <E, R, B extends HttpClientResponse.HttpClientResponse, E2>(self: HttpClient.With<E, R>, refinement: Predicate.Refinement<NoInfer<HttpClientResponse.HttpClientResponse>, B>, orFailWith: (response: NoInfer<HttpClientResponse.HttpClientResponse>) => E2): HttpClient.With<E2 | E, R>; <E, R, E2>(self: HttpClient.With<E, R>, predicate: Predicate.Predicate<NoInfer<HttpClientResponse.HttpClientResponse>>, orFailWith: (response: NoInfer<HttpClientResponse.HttpClientResponse>) => E2): HttpClient.With<E2 | E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L456)

Since v4.0.0
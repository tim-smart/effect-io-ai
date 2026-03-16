Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.filterOrElse

Filters the result of a response, or runs an alternative effect if the predicate fails.

**Signature**

```ts
declare const filterOrElse: { <B extends HttpClientResponse.HttpClientResponse, E2, R2>(refinement: Predicate.Refinement<NoInfer<HttpClientResponse.HttpClientResponse>, B>, orElse: (response: EqualsWith<HttpClientResponse.HttpClientResponse, B, NoInfer<HttpClientResponse.HttpClientResponse>, Exclude<NoInfer<HttpClientResponse.HttpClientResponse>, B>>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E2 | E, R2 | R>; <E2, R2>(predicate: Predicate.Predicate<NoInfer<HttpClientResponse.HttpClientResponse>>, orElse: (response: NoInfer<HttpClientResponse.HttpClientResponse>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E2 | E, R2 | R>; <E, R, B extends HttpClientResponse.HttpClientResponse, E2, R2>(self: HttpClient.With<E, R>, refinement: Predicate.Refinement<HttpClientResponse.HttpClientResponse, B>, orElse: (response: EqualsWith<HttpClientResponse.HttpClientResponse, B, HttpClientResponse.HttpClientResponse, Exclude<HttpClientResponse.HttpClientResponse, B>>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E2, R2>): HttpClient.With<E2 | E, R2 | R>; <E, R, E2, R2>(self: HttpClient.With<E, R>, predicate: Predicate.Predicate<HttpClientResponse.HttpClientResponse>, orElse: (response: HttpClientResponse.HttpClientResponse) => Effect.Effect<HttpClientResponse.HttpClientResponse, E2, R2>): HttpClient.With<E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L411)

Since v4.0.0
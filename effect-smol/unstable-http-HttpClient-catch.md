Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.catch

Handles all client failures with an effectful recovery function and returns a transformed client.

**Signature**

```ts
declare const catch: { <E, E2, R2>(f: (e: E) => Effect.Effect<HttpClientResponse.HttpClientResponse, E2, R2>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E2, R2 | R>; <E, R, A2, E2, R2>(self: HttpClient.With<E, R>, f: (e: E) => Effect.Effect<A2, E2, R2>): HttpClient.With<E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L341)

Since v4.0.0
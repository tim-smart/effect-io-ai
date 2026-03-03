Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.tapRequest

Performs an additional effect on the request before sending it.

**Signature**

```ts
declare const tapRequest: { <_, E2, R2>(f: (a: HttpClientRequest.HttpClientRequest) => Effect.Effect<_, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, _, E2, R2>(self: HttpClient.With<E, R>, f: (a: HttpClientRequest.HttpClientRequest) => Effect.Effect<_, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1198)

Since v4.0.0
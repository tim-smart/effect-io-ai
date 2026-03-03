Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.tap

Performs an additional effect after a successful request.

**Signature**

```ts
declare const tap: { <_, E2, R2>(f: (response: HttpClientResponse.HttpClientResponse) => Effect.Effect<_, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, _, E2, R2>(self: HttpClient.With<E, R>, f: (response: HttpClientResponse.HttpClientResponse) => Effect.Effect<_, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1169)

Since v4.0.0
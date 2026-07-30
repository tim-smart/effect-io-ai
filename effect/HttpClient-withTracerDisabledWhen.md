Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.withTracerDisabledWhen

Disables tracing for specific requests based on a provided predicate.

**Signature**

```ts
declare const withTracerDisabledWhen: { (predicate: Predicate.Predicate<ClientRequest.HttpClientRequest>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, predicate: Predicate.Predicate<ClientRequest.HttpClientRequest>): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L645)

Since v1.0.0
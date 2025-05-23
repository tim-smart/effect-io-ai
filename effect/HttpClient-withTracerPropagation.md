Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.withTracerPropagation

Enables or disables tracing propagation for the request.

**Signature**

```ts
declare const withTracerPropagation: { (enabled: boolean): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, enabled: boolean): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L648)

Since v1.0.0
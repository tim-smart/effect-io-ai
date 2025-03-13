Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.withTracerPropagation

Enables or disables tracing propagation for the request.

**Signature**

```ts
declare const withTracerPropagation: { (enabled: boolean): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(effect: Effect.Effect<A, E, R>, enabled: boolean): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L647)

Since v1.0.0
## withTracerDisabledWhen

Disables tracing for specific requests based on a provided predicate.

**Signature**

```ts
declare const withTracerDisabledWhen: { (predicate: Predicate.Predicate<ClientRequest.HttpClientRequest>): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(effect: Effect.Effect<A, E, R>, predicate: Predicate.Predicate<ClientRequest.HttpClientRequest>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L625)

Since v1.0.0
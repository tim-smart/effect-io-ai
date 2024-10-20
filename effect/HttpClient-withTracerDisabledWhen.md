# withTracerDisabledWhen

Disables tracing for specific requests based on a provided predicate.

To import and use `withTracerDisabledWhen` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.withTracerDisabledWhen
```

**Signature**

```ts
export declare const withTracerDisabledWhen: {
  (
    predicate: Predicate.Predicate<ClientRequest.HttpClientRequest>
  ): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(
    effect: Effect.Effect<A, E, R>,
    predicate: Predicate.Predicate<ClientRequest.HttpClientRequest>
  ): Effect.Effect<A, E, R>
}
```

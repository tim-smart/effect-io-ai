# withTracerPropagation

Enables or disables tracing propagation for the request.

To import and use `withTracerPropagation` from the "HttpClient" module:

ts
import \* as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.withTracerPropagation
undefined

**Signature**

```ts
export declare const withTracerPropagation: {
  (enabled: boolean): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(effect: Effect.Effect<A, E, R>, enabled: boolean): Effect.Effect<A, E, R>
}
```

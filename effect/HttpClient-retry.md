# retry

Retries the request based on a provided schedule or policy.

To import and use `retry` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.retry
```

**Signature**

```ts
export declare const retry: {
  <E, O extends Effect.Retry.Options<E>>(options: O): <R>(self: HttpClient<E, R>) => Retry.Return<R, E, O>
  <B, E, R1>(policy: Schedule.Schedule<B, NoInfer<E>, R1>): <R>(self: HttpClient<E, R>) => HttpClient<E, R1 | R>
  <E, R, O extends Effect.Retry.Options<E>>(self: HttpClient<E, R>, options: O): Retry.Return<R, E, O>
  <E, R, B, R1>(self: HttpClient<E, R>, policy: Schedule.Schedule<B, E, R1>): HttpClient<E, R1 | R>
}
```

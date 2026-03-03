Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.withRateLimiter

Applies request rate limiting using the `RateLimiter` service.

It can update limits by inspecting common rate limit response headers and
automatically retries HTTP `429` responses (or `HttpClientError` values
wrapping a `429` response) by forcing the retry back through the limiter.

**Signature**

```ts
declare const withRateLimiter: { (options: WithRateLimiter.Options): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | RateLimiter.RateLimiterError, R>; <E, R>(self: HttpClient.With<E, R>, options: WithRateLimiter.Options): HttpClient.With<E | RateLimiter.RateLimiterError, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L938)

Since v4.0.0
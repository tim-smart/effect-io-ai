Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.WithRateLimiter.Options

Options used to configure `withRateLimiter`.

They define the backing limiter, initial limit window, keying strategy, algorithm, token cost, and whether response headers update future limits.

**Signature**

```ts
export interface Options {
    /**
     * The `RateLimiter` service to use for rate limiting.
     */
    readonly limiter: RateLimiter.RateLimiter
    /**
     * The initial rate limit window duration.
     */
    readonly window: Duration.Input
    /**
     * The initial maximum number of allowed requests in the window.
     */
    readonly limit: number
    /**
     * The key to identify the rate limit. Requests with the same key will share
     * the same rate limit. This can be used to implement per-user or
     * per-endpoint rate limits.
     */
    readonly key: string | ((request: HttpClientRequest.HttpClientRequest) => string)
    /**
     * Defaults to `"fixed-window"`.
     */
    readonly algorithm?: "fixed-window" | "token-bucket" | undefined
    /**
     * Defaults to `1`.
     */
    readonly tokens?: number | ((request: HttpClientRequest.HttpClientRequest) => number) | undefined
    /**
     * Disable automatic limits updates from response headers.
     */
    readonly disableResponseInspection?: boolean | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L974)

Since v4.0.0
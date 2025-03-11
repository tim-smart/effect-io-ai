## RateLimiter

Limits the number of calls to a resource to a maximum amount in some interval.

Note that only the moment of starting the effect is rate limited: the number
of concurrent executions is not bounded.

**Signature**

```ts
export interface RateLimiter {
  <A, E, R>(task: Effect<A, E, R>): Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RateLimiter.ts#L20)

Since v2.0.0
# RateLimiter

Limits the number of calls to a resource to a maximum amount in some interval using the token bucket algorithm.

Note that only the moment of starting the effect is rate limited: the number of concurrent executions is not bounded.

Calls are queued up in an unbounded queue until capacity becomes available.

To import and use `RateLimiter` from the "RateLimiter" module:

```ts
import * as RateLimiter from "effect/RateLimiter"
// Can be accessed like this
RateLimiter.RateLimiter
```

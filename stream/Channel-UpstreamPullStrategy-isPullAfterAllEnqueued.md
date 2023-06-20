# isPullAfterAllEnqueued

Returns `true` if the specified `UpstreamPullStrategy` is a
`PullAfterAllEnqueued`, `false` otherwise.

To import and use `isPullAfterAllEnqueued` from the "UpstreamPullStrategy" module:

```ts
import * as UpstreamPullStrategy from '@effect/stream/Channel/UpstreamPullStrategy'

// Can be accessed like this
UpstreamPullStrategy.isPullAfterAllEnqueued
```

**Signature**

```ts
export declare const isPullAfterAllEnqueued: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterAllEnqueued<A>
```

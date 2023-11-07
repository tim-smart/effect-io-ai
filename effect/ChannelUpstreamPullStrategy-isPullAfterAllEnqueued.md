# isPullAfterAllEnqueued

Returns `true` if the specified `UpstreamPullStrategy` is a
`PullAfterAllEnqueued`, `false` otherwise.

To import and use `isPullAfterAllEnqueued` from the "ChannelUpstreamPullStrategy" module:

```ts
import * as ChannelUpstreamPullStrategy from 'effect/ChannelUpstreamPullStrategy'

// Can be accessed like this
ChannelUpstreamPullStrategy.isPullAfterAllEnqueued
```

**Signature**

```ts
export declare const isPullAfterAllEnqueued: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterAllEnqueued<A>
```

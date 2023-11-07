# isPullAfterNext

Returns `true` if the specified `UpstreamPullStrategy` is a `PullAfterNext`,
`false` otherwise.

To import and use `isPullAfterNext` from the "ChannelUpstreamPullStrategy" module:

```ts
import * as ChannelUpstreamPullStrategy from 'effect/ChannelUpstreamPullStrategy'

// Can be accessed like this
ChannelUpstreamPullStrategy.isPullAfterNext
```

**Signature**

```ts
export declare const isPullAfterNext: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterNext<A>
```

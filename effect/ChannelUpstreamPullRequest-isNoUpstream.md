# isNoUpstream

Returns `true` if the specified `UpstreamPullRequest` is a `NoUpstream`,
`false` otherwise.

To import and use `isNoUpstream` from the "ChannelUpstreamPullRequest" module:

```ts
import * as ChannelUpstreamPullRequest from 'effect/ChannelUpstreamPullRequest'

// Can be accessed like this
ChannelUpstreamPullRequest.isNoUpstream
```

**Signature**

```ts
export declare const isNoUpstream: <A>(self: UpstreamPullRequest<A>) => self is NoUpstream
```

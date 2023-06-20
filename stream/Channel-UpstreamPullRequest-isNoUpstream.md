# isNoUpstream

Returns `true` if the specified `UpstreamPullRequest` is a `NoUpstream`,
`false` otherwise.

To import and use `isNoUpstream` from the "UpstreamPullRequest" module:

```ts
import * as UpstreamPullRequest from '@effect/stream/Channel/UpstreamPullRequest'

// Can be accessed like this
UpstreamPullRequest.isNoUpstream
```

**Signature**

```ts
export declare const isNoUpstream: <A>(self: UpstreamPullRequest<A>) => self is NoUpstream
```

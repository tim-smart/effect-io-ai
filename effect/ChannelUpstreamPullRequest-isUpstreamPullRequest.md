# isUpstreamPullRequest

Returns `true` if the specified value is an `UpstreamPullRequest`, `false`
otherwise.

To import and use `isUpstreamPullRequest` from the "ChannelUpstreamPullRequest" module:

```ts
import * as ChannelUpstreamPullRequest from 'effect/ChannelUpstreamPullRequest'

// Can be accessed like this
ChannelUpstreamPullRequest.isUpstreamPullRequest
```

**Signature**

```ts
export declare const isUpstreamPullRequest: (u: unknown) => u is UpstreamPullRequest<unknown>
```

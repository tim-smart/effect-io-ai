# isPulled

Returns `true` if the specified `UpstreamPullRequest` is a `Pulled`, `false`
otherwise.

To import and use `isPulled` from the "ChannelUpstreamPullRequest" module:

```ts
import * as ChannelUpstreamPullRequest from 'effect/ChannelUpstreamPullRequest'

// Can be accessed like this
ChannelUpstreamPullRequest.isPulled
```

**Signature**

```ts
export declare const isPulled: <A>(self: UpstreamPullRequest<A>) => self is Pulled<A>
```

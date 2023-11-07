# match

Folds an `UpstreamPullRequest<A>` into a value of type `Z`.

To import and use `match` from the "ChannelUpstreamPullRequest" module:

```ts
import * as ChannelUpstreamPullRequest from 'effect/ChannelUpstreamPullRequest'

// Can be accessed like this
ChannelUpstreamPullRequest.match
```

**Signature**

```ts
export declare const match: {
  <A, Z>(options: {
    readonly onPulled: (value: A) => Z
    readonly onNoUpstream: (activeDownstreamCount: number) => Z
  }): (self: UpstreamPullRequest<A>) => Z
  <A, Z>(
    self: UpstreamPullRequest<A>,
    options: { readonly onPulled: (value: A) => Z; readonly onNoUpstream: (activeDownstreamCount: number) => Z }
  ): Z
}
```

# match

Folds an `UpstreamPullRequest<A>` into a value of type `Z`.

To import and use `match` from the "UpstreamPullRequest" module:

ts
import \* as UpstreamPullRequest from "effect/UpstreamPullRequest"
// Can be accessed like this
UpstreamPullRequest.match
undefined

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

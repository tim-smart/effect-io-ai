# match

Folds an `UpstreamPullRequest<A>` into a value of type `Z`.

Part of the `UpstreamPullRequest` module, imported from `@effect/stream/Channel/UpstreamPullRequest`.

**Signature**

```ts
export declare const match: {
  <A, Z>(onPulled: (value: A) => Z, onNoUpstream: (activeDownstreamCount: number) => Z): (
    self: UpstreamPullRequest<A>
  ) => Z
  <A, Z>(self: UpstreamPullRequest<A>, onPulled: (value: A) => Z, onNoUpstream: (activeDownstreamCount: number) => Z): Z
}
```

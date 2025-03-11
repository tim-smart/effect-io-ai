## match

Folds an `UpstreamPullRequest<A>` into a value of type `Z`.

**Signature**

```ts
declare const match: { <A, Z>(options: { readonly onPulled: (value: A) => Z; readonly onNoUpstream: (activeDownstreamCount: number) => Z; }): (self: UpstreamPullRequest<A>) => Z; <A, Z>(self: UpstreamPullRequest<A>, options: { readonly onPulled: (value: A) => Z; readonly onNoUpstream: (activeDownstreamCount: number) => Z; }): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UpstreamPullRequest.ts#L103)

Since v2.0.0
## isNoUpstream

Returns `true` if the specified `UpstreamPullRequest` is a `NoUpstream`,
`false` otherwise.

**Signature**

```ts
declare const isNoUpstream: <A>(self: UpstreamPullRequest<A>) => self is NoUpstream
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UpstreamPullRequest.ts#L95)

Since v2.0.0
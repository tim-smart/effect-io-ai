Package: `effect`<br />
Module: `UpstreamPullStrategy`<br />

## UpstreamPullStrategy.isPullAfterNext

Returns `true` if the specified `UpstreamPullStrategy` is a `PullAfterNext`,
`false` otherwise.

**Signature**

```ts
declare const isPullAfterNext: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterNext<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UpstreamPullStrategy.ts#L89)

Since v2.0.0
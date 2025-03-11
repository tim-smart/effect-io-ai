## isPullAfterAllEnqueued

Returns `true` if the specified `UpstreamPullStrategy` is a
`PullAfterAllEnqueued`, `false` otherwise.

**Signature**

```ts
declare const isPullAfterAllEnqueued: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterAllEnqueued<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UpstreamPullStrategy.ts#L98)

Since v2.0.0
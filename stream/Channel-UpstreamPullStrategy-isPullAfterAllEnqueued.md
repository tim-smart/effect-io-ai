# isPullAfterAllEnqueued

Returns `true` if the specified `UpstreamPullStrategy` is a
`PullAfterAllEnqueued`, `false` otherwise.

Part of the `UpstreamPullStrategy` module, imported from `@effect/stream/Channel/UpstreamPullStrategy`.

**Signature**

```ts
export declare const isPullAfterAllEnqueued: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterAllEnqueued<A>
```

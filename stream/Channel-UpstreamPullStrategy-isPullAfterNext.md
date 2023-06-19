# isPullAfterNext

Returns `true` if the specified `UpstreamPullStrategy` is a `PullAfterNext`,
`false` otherwise.

Part of the `UpstreamPullStrategy` module, imported from `@effect/stream/Channel/UpstreamPullStrategy`.

**Signature**

```ts
export declare const isPullAfterNext: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterNext<A>
```

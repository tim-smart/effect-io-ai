# match

Folds an `UpstreamPullStrategy<A>` into a value of type `Z`.

Part of the `UpstreamPullStrategy` module, imported from `@effect/stream/Channel/UpstreamPullStrategy`.

**Signature**

```ts
export declare const match: {
  <A, Z>(
    onPullAfterNext: (emitSeparator: Option.Option<A>) => Z,
    onPullAfterAllEnqueued: (emitSeparator: Option.Option<A>) => Z
  ): (self: UpstreamPullStrategy<A>) => Z
  <A, Z>(
    self: UpstreamPullStrategy<A>,
    onPullAfterNext: (emitSeparator: Option.Option<A>) => Z,
    onPullAfterAllEnqueued: (emitSeparator: Option.Option<A>) => Z
  ): Z
}
```

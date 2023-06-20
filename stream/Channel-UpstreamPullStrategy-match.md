# match

Folds an `UpstreamPullStrategy<A>` into a value of type `Z`.

To import and use `match` from the "UpstreamPullStrategy" module:

```ts
import * as UpstreamPullStrategy from '@effect/stream/Channel/UpstreamPullStrategy'

// Can be accessed like this
UpstreamPullStrategy.match
```

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

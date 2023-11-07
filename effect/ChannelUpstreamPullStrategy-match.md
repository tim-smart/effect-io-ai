# match

Folds an `UpstreamPullStrategy<A>` into a value of type `Z`.

To import and use `match` from the "ChannelUpstreamPullStrategy" module:

```ts
import * as ChannelUpstreamPullStrategy from 'effect/ChannelUpstreamPullStrategy'

// Can be accessed like this
ChannelUpstreamPullStrategy.match
```

**Signature**

```ts
export declare const match: {
  <A, Z>(options: {
    readonly onNext: (emitSeparator: Option.Option<A>) => Z
    readonly onAllEnqueued: (emitSeparator: Option.Option<A>) => Z
  }): (self: UpstreamPullStrategy<A>) => Z
  <A, Z>(
    self: UpstreamPullStrategy<A>,
    options: {
      readonly onNext: (emitSeparator: Option.Option<A>) => Z
      readonly onAllEnqueued: (emitSeparator: Option.Option<A>) => Z
    }
  ): Z
}
```

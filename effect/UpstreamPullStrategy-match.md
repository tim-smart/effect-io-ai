# match

Folds an `UpstreamPullStrategy<A>` into a value of type `Z`.

To import and use `match` from the "UpstreamPullStrategy" module:

```ts
import * as UpstreamPullStrategy from "effect/UpstreamPullStrategy"
// Can be accessed like this
UpstreamPullStrategy.match
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

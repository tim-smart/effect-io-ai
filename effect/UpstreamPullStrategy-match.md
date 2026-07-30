Package: `effect`<br />
Module: `UpstreamPullStrategy`<br />

## UpstreamPullStrategy.match

Folds an `UpstreamPullStrategy<A>` into a value of type `Z`.

**Signature**

```ts
declare const match: { <A, Z>(options: { readonly onNext: (emitSeparator: Option.Option<A>) => Z; readonly onAllEnqueued: (emitSeparator: Option.Option<A>) => Z; }): (self: UpstreamPullStrategy<A>) => Z; <A, Z>(self: UpstreamPullStrategy<A>, options: { readonly onNext: (emitSeparator: Option.Option<A>) => Z; readonly onAllEnqueued: (emitSeparator: Option.Option<A>) => Z; }): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UpstreamPullStrategy.ts#L107)

Since v2.0.0
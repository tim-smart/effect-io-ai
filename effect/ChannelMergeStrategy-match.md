# match

Folds an `MergeStrategy` into a value of type `A`.

To import and use `match` from the "ChannelMergeStrategy" module:

```ts
import * as ChannelMergeStrategy from 'effect/ChannelMergeStrategy'

// Can be accessed like this
ChannelMergeStrategy.match
```

**Signature**

```ts
export declare const match: {
  <A>(options: { readonly onBackPressure: () => A; readonly onBufferSliding: () => A }): (self: MergeStrategy) => A
  <A>(self: MergeStrategy, options: { readonly onBackPressure: () => A; readonly onBufferSliding: () => A }): A
}
```

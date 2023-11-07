# isBackPressure

Returns `true` if the specified `MergeStrategy` is a `BackPressure`, `false`
otherwise.

To import and use `isBackPressure` from the "ChannelMergeStrategy" module:

```ts
import * as ChannelMergeStrategy from 'effect/ChannelMergeStrategy'

// Can be accessed like this
ChannelMergeStrategy.isBackPressure
```

**Signature**

```ts
export declare const isBackPressure: (self: MergeStrategy) => self is BackPressure
```

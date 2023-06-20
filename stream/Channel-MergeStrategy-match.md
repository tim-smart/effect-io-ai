# match

Folds an `MergeStrategy` into a value of type `A`.

To import and use `match` from the "MergeStrategy" module:

```ts
import * as MergeStrategy from '@effect/stream/Channel/MergeStrategy'

// Can be accessed like this
MergeStrategy.match
```

**Signature**

```ts
export declare const match: {
  <A>(onBackPressure: () => A, onBufferSliding: () => A): (self: MergeStrategy) => A
  <A>(self: MergeStrategy, onBackPressure: () => A, onBufferSliding: () => A): A
}
```

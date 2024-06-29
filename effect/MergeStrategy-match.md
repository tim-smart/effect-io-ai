# match

Folds an `MergeStrategy` into a value of type `A`.

To import and use `match` from the "MergeStrategy" module:

```ts
import * as MergeStrategy from "effect/MergeStrategy"
// Can be accessed like this
MergeStrategy.match
```

**Signature**

```ts
export declare const match: {
  <A>(options: { readonly onBackPressure: () => A; readonly onBufferSliding: () => A }): (self: MergeStrategy) => A
  <A>(self: MergeStrategy, options: { readonly onBackPressure: () => A; readonly onBufferSliding: () => A }): A
}
```

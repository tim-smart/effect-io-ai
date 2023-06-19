# match

Folds an `MergeStrategy` into a value of type `A`.

Part of the `MergeStrategy` module, imported from `@effect/stream/Channel/MergeStrategy`.

**Signature**

```ts
export declare const match: {
  <A>(onBackPressure: () => A, onBufferSliding: () => A): (self: MergeStrategy) => A
  <A>(self: MergeStrategy, onBackPressure: () => A, onBufferSliding: () => A): A
}
```

Package: `effect`<br />
Module: `MergeStrategy`<br />

## MergeStrategy.match

Folds an `MergeStrategy` into a value of type `A`.

**Signature**

```ts
declare const match: { <A>(options: { readonly onBackPressure: () => A; readonly onBufferSliding: () => A; }): (self: MergeStrategy) => A; <A>(self: MergeStrategy, options: { readonly onBackPressure: () => A; readonly onBufferSliding: () => A; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MergeStrategy.ts#L98)

Since v2.0.0
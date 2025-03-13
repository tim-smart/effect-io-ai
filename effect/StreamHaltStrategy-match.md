Package: `effect`<br />
Module: `StreamHaltStrategy`<br />

## StreamHaltStrategy.match

Folds over the specified `HaltStrategy` using the provided case functions.

**Signature**

```ts
declare const match: { <Z>(options: { readonly onLeft: () => Z; readonly onRight: () => Z; readonly onBoth: () => Z; readonly onEither: () => Z; }): (self: HaltStrategy) => Z; <Z>(self: HaltStrategy, options: { readonly onLeft: () => Z; readonly onRight: () => Z; readonly onBoth: () => Z; readonly onEither: () => Z; }): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/StreamHaltStrategy.ts#L110)

Since v2.0.0
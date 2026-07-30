Package: `effect`<br />
Module: `ChildExecutorDecision`<br />

## ChildExecutorDecision.match

Folds over a `ChildExecutorDecision` to produce a value of type `A`.

**Signature**

```ts
declare const match: { <A>(options: { readonly onContinue: () => A; readonly onClose: (value: unknown) => A; readonly onYield: () => A; }): (self: ChildExecutorDecision) => A; <A>(self: ChildExecutorDecision, options: { readonly onContinue: () => A; readonly onClose: (value: unknown) => A; readonly onYield: () => A; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ChildExecutorDecision.ts#L130)

Since v2.0.0
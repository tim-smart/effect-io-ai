# match

Folds over a `ChildExecutorDecision` to produce a value of type `A`.

Part of the `ChildExecutorDecision` module, imported from `@effect/stream/Channel/ChildExecutorDecision`.

**Signature**

```ts
export declare const match: {
  <A>(onContinue: () => A, onClose: (value: unknown) => A, onYield: () => A): (self: ChildExecutorDecision) => A
  <A>(self: ChildExecutorDecision, onContinue: () => A, onClose: (value: unknown) => A, onYield: () => A): A
}
```

# match

Folds over a `ChildExecutorDecision` to produce a value of type `A`.

To import and use `match` from the "ChildExecutorDecision" module:

```ts
import * as ChildExecutorDecision from '@effect/stream/Channel/ChildExecutorDecision'

// Can be accessed like this
ChildExecutorDecision.match
```

**Signature**

```ts
export declare const match: {
  <A>(options: { readonly onContinue: () => A; readonly onClose: (value: unknown) => A; readonly onYield: () => A }): (
    self: ChildExecutorDecision
  ) => A
  <A>(
    self: ChildExecutorDecision,
    options: { readonly onContinue: () => A; readonly onClose: (value: unknown) => A; readonly onYield: () => A }
  ): A
}
```

# match

Folds over a `ChildExecutorDecision` to produce a value of type `A`.

To import and use `match` from the "ChannelChildExecutorDecision" module:

```ts
import * as ChannelChildExecutorDecision from 'effect/ChannelChildExecutorDecision'

// Can be accessed like this
ChannelChildExecutorDecision.match
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

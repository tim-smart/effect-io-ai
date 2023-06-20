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
  <A>(onContinue: () => A, onClose: (value: unknown) => A, onYield: () => A): (self: ChildExecutorDecision) => A
  <A>(self: ChildExecutorDecision, onContinue: () => A, onClose: (value: unknown) => A, onYield: () => A): A
}
```

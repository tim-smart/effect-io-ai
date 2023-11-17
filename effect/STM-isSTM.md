# isSTM

Returns `true` if the provided value is an `STM`, `false` otherwise.

To import and use `isSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.isSTM
```

**Signature**

```ts
export declare const isSTM: (u: unknown) => u is STM<unknown, unknown, unknown>
```

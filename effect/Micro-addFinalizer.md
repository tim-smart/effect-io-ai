# addFinalizer

Add a finalizer to the current `MicroScope`.

To import and use `addFinalizer` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.addFinalizer
```

**Signature**

```ts
export declare const addFinalizer: (
  finalizer: (result: Result<unknown, unknown>) => Micro<void>
) => Micro<void, never, MicroScope>
```

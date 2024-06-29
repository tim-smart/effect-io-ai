# failSync

Constructs a layer that fails with the specified error.

To import and use `failSync` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.failSync
```

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Layer<unknown, E, never>
```

# dieSync

Constructs a layer that dies with the specified defect.

To import and use `dieSync` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.dieSync
```

**Signature**

```ts
export declare const dieSync: (evaluate: LazyArg<unknown>) => Layer<never, never, unknown>
```

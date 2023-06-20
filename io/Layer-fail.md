# fail

Constructs a layer that fails with the specified error.

To import and use `fail` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Layer<never, E, unknown>
```

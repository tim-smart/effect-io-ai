# failCauseSync

Constructs a layer that fails with the specified cause.

To import and use `failCauseSync` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.failCauseSync
```

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Layer<unknown, E>
```

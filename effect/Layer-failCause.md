# failCause

Constructs a layer that fails with the specified cause.

To import and use `failCause` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.failCause
```

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Layer<unknown, E>
```

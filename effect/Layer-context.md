# context

Constructs a `Layer` that passes along the specified context as an
output.

To import and use `context` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.context
```

**Signature**

```ts
export declare const context: <R>() => Layer<R, never, R>
```

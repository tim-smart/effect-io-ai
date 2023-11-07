# die

Constructs a layer that dies with the specified defect.

To import and use `die` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Layer<never, never, unknown>
```

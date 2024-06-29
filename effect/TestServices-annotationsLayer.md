# annotationsLayer

Constructs a new `Annotations` service wrapped in a layer.

To import and use `annotationsLayer` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.annotationsLayer
```

**Signature**

```ts
export declare const annotationsLayer: () => Layer.Layer<Annotations.TestAnnotations>
```

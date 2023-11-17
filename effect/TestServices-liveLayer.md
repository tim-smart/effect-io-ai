# liveLayer

Constructs a new `Live` service wrapped in a layer.

To import and use `liveLayer` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.liveLayer
```

**Signature**

```ts
export declare const liveLayer: () => Layer.Layer<DefaultServices.DefaultServices, never, Live.TestLive>
```

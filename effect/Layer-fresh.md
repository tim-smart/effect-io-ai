# fresh

Creates a fresh version of this layer that will not be shared.

To import and use `fresh` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.fresh
```

**Signature**

```ts
export declare const fresh: <A, E, R>(self: Layer<A, E, R>) => Layer<A, E, R>
```

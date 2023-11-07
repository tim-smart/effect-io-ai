# fresh

Creates a fresh version of this layer that will not be shared.

To import and use `fresh` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.fresh
```

**Signature**

```ts
export declare const fresh: <R, E, A>(self: Layer<R, E, A>) => Layer<R, E, A>
```

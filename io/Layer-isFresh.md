# isFresh

Returns `true` if the specified `Layer` is a fresh version that will not be
shared, `false` otherwise.

To import and use `isFresh` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.isFresh
```

**Signature**

```ts
export declare const isFresh: <R, E, A>(self: Layer<R, E, A>) => boolean
```

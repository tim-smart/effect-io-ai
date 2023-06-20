# syncContext

Lazily constructs a layer from the specified value, which must return one or more
services.

To import and use `syncContext` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.syncContext
```

**Signature**

```ts
export declare const syncContext: <A>(evaluate: LazyArg<Context.Context<A>>) => Layer<never, never, A>
```

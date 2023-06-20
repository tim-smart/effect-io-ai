# succeedContext

Constructs a layer from the specified value, which must return one or more
services.

To import and use `succeedContext` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.succeedContext
```

**Signature**

```ts
export declare const succeedContext: <A>(context: Context.Context<A>) => Layer<never, never, A>
```

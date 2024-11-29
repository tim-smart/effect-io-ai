# succeedContext

Constructs a layer from the specified value, which must return one or more
services.

To import and use `succeedContext` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.succeedContext
undefined

**Signature**

```ts
export declare const succeedContext: <A>(context: Context.Context<A>) => Layer<A>
```

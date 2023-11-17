# locally

Provides each data source with a fiber ref value.

To import and use `locally` from the "RequestBlock" module:

```ts
import * as RequestBlock from "effect/RequestBlock"
// Can be accessed like this
RequestBlock.locally
```

**Signature**

```ts
export declare const locally: <R, A>(self: RequestBlock<R>, ref: FiberRef<A>, value: A) => RequestBlock<R>
```

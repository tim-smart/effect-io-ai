# mapInputContext

Provides each data source with part of its required environment.

To import and use `mapInputContext` from the "RequestBlock" module:

```ts
import * as RequestBlock from "effect/RequestBlock"
// Can be accessed like this
RequestBlock.mapInputContext
```

**Signature**

```ts
export declare const mapInputContext: <R0, R>(
  self: RequestBlock<R>,
  f: (context: Context.Context<R0>) => Context.Context<R>
) => RequestBlock<R0>
```

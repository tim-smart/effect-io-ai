# contramapContext

Provides each data source with part of its required environment.

To import and use `contramapContext` from the "RequestBlock" module:

```ts
import * as RequestBlock from '@effect/io/RequestBlock'

// Can be accessed like this
RequestBlock.contramapContext
```

**Signature**

```ts
export declare const contramapContext: <R0, R>(
  self: RequestBlock<R>,
  f: (context: Context.Context<R0>) => Context.Context<R>
) => RequestBlock<R0>
```

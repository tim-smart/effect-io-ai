# dieSync

The stream that dies with the specified lazily evaluated defect.

To import and use `dieSync` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.dieSync
```

**Signature**

```ts
export declare const dieSync: (evaluate: LazyArg<unknown>) => Stream<never, never, never>
```

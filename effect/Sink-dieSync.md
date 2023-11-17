# dieSync

Creates a sink halting with the specified defect.

To import and use `dieSync` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.dieSync
```

**Signature**

```ts
export declare const dieSync: (evaluate: LazyArg<unknown>) => Sink<never, never, unknown, never, never>
```

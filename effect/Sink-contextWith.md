# contextWith

Accesses the context of the sink.

To import and use `contextWith` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.contextWith
```

**Signature**

```ts
export declare const contextWith: <R, Z>(f: (context: Context.Context<R>) => Z) => Sink<R, never, unknown, never, Z>
```

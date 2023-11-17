# contextWithSink

Accesses the context of the sink in the context of a sink.

To import and use `contextWithSink` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.contextWithSink
```

**Signature**

```ts
export declare const contextWithSink: <R0, R, E, In, L, Z>(
  f: (context: Context.Context<R0>) => Sink<R, E, In, L, Z>
) => Sink<R0 | R, E, In, L, Z>
```

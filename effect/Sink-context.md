# context

Accesses the whole context of the sink.

To import and use `context` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.context
```

**Signature**

```ts
export declare const context: <R>() => Sink<R, never, unknown, never, Context.Context<R>>
```

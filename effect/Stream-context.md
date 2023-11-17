# context

Accesses the whole context of the stream.

To import and use `context` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.context
```

**Signature**

```ts
export declare const context: <R>() => Stream<R, never, Context.Context<R>>
```

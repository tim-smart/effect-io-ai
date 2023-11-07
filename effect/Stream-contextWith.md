# contextWith

Accesses the context of the stream.

To import and use `contextWith` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.contextWith
```

**Signature**

```ts
export declare const contextWith: <R, A>(f: (env: Context.Context<R>) => A) => Stream<R, never, A>
```

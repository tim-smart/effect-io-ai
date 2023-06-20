# failSync

Terminates with the specified lazily evaluated error.

To import and use `failSync` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.failSync
```

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Stream<never, E, never>
```

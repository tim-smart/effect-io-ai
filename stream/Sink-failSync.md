# failSync

A sink that always fails with the specified lazily evaluated error.

To import and use `failSync` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.failSync
```

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Sink<never, E, unknown, never, never>
```

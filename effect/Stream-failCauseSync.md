# failCauseSync

The stream that always fails with the specified lazily evaluated `Cause`.

To import and use `failCauseSync` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.failCauseSync
```

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Stream<never, E, never>
```

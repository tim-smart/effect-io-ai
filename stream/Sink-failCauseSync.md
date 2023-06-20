# failCauseSync

Creates a sink halting with a specified lazily evaluated `Cause`.

To import and use `failCauseSync` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.failCauseSync
```

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Sink<never, E, unknown, never, never>
```

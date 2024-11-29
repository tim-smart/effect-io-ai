# failCauseSync

Creates a sink halting with a specified lazily evaluated `Cause`.

To import and use `failCauseSync` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.failCauseSync
undefined

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Sink<never, unknown, never, E>
```

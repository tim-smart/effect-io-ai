# failCause

Creates a sink halting with a specified `Cause`.

To import and use `failCause` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.failCause
```

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Sink<never, E, unknown, never, never>
```

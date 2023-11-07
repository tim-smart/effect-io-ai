# failCause

The stream that always fails with the specified `Cause`.

To import and use `failCause` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.failCause
```

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Stream<never, E, never>
```

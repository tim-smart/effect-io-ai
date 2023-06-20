# fail

A sink that always fails with the specified error.

To import and use `fail` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.fail
```

**Signature**

```ts
export declare const fail: <E>(e: E) => Sink<never, E, unknown, never, never>
```

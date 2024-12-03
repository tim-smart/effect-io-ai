# fail

A sink that always fails with the specified error.

To import and use `fail` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.fail
```

**Signature**

```ts
export declare const fail: <E>(e: E) => Sink<never, unknown, never, E>
```

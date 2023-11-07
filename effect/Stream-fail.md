# fail

Terminates with the specified error.

To import and use `fail` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Stream<never, E, never>
```

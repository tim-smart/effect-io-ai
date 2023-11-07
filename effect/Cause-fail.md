# fail

Constructs a new `Fail` cause from the specified `error`.

To import and use `fail` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Cause<E>
```

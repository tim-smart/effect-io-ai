# originalError

Returns the original, unproxied, instance of a thrown error

To import and use `originalError` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.originalError
```

**Signature**

```ts
export declare const originalError: <E>(obj: E) => E
```

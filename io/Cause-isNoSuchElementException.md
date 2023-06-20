# isNoSuchElementException

Returns `true` if the specified value is an `IllegalArgumentException`, `false`
otherwise.

To import and use `isNoSuchElementException` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.isNoSuchElementException
```

**Signature**

```ts
export declare const isNoSuchElementException: (u: unknown) => u is NoSuchElementException
```

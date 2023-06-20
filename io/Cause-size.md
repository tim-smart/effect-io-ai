# size

Returns the size of the cause, calculated as the number of individual `Cause`
nodes found in the `Cause` semiring structure.

To import and use `size` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.size
```

**Signature**

```ts
export declare const size: <E>(self: Cause<E>) => number
```

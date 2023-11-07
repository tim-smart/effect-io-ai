# isFailType

Returns `true` if the specified `Cause` is a `Fail` type, `false`
otherwise.

To import and use `isFailType` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.isFailType
```

**Signature**

```ts
export declare const isFailType: <E>(self: Cause<E>) => self is Fail<E>
```

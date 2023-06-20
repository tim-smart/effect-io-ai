# isAnnotatedType

Returns `true` if the specified `Cause` is an `Annotated` type, `false`
otherwise.

To import and use `isAnnotatedType` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.isAnnotatedType
```

**Signature**

```ts
export declare const isAnnotatedType: <E>(self: Cause<E>) => self is Annotated<E>
```

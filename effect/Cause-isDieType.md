# isDieType

Returns `true` if the specified `Cause` is a `Die` type, `false`
otherwise.

To import and use `isDieType` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.isDieType
```

**Signature**

```ts
export declare const isDieType: <E>(self: Cause<E>) => self is Die
```

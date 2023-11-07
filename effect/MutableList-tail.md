# tail

Returns the last element of the list, if it exists.

To import and use `tail` from the "MutableList" module:

```ts
import * as MutableList from 'effect/MutableList'

// Can be accessed like this
MutableList.tail
```

**Signature**

```ts
export declare const tail: <A>(self: MutableList<A>) => A | undefined
```

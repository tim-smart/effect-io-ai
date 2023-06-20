# shift

Removes the first value from the list and returns it, if it exists.

To import and use `shift` from the "MutableList" module:

```ts
import * as MutableList from '@effect/data/MutableList'

// Can be accessed like this
MutableList.shift
```

**Signature**

```ts
export declare const shift: <A>(self: MutableList<A>) => A | undefined
```

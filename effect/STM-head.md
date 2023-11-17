# head

Returns a successful effect with the head of the list if the list is
non-empty or fails with the error `None` if the list is empty.

To import and use `head` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.head
```

**Signature**

```ts
export declare const head: <R, E, A>(self: STM<R, E, Iterable<A>>) => STM<R, Option.Option<E>, A>
```

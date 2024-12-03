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
export declare const head: <A, E, R>(self: STM<Iterable<A>, E, R>) => STM<A, Option.Option<E>, R>
```

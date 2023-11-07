# tail

Returns the tail of the specified list, or `None` if the list is empty.

To import and use `tail` from the "List" module:

```ts
import * as List from 'effect/List'

// Can be accessed like this
List.tail
```

**Signature**

```ts
export declare const tail: <A>(self: List<A>) => Option.Option<List<A>>
```

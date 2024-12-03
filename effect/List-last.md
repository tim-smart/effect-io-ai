# last

Returns the last element of the specified list, or `None` if the list is
empty.

To import and use `last` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.last
```

**Signature**

```ts
export declare const last: <A>(self: List<A>) => Option.Option<A>
```

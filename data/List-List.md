# List

Represents an immutable linked list of elements of type `A`.

A `List` is optimal for last-in-first-out (LIFO), stack-like access patterns.
If you need another access pattern, for example, random access or FIFO,
consider using a collection more suited for that other than `List`.

To import and use `List` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.List
```

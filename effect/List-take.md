# take

Takes the specified number of elements from the beginning of the specified
list.

To import and use `take` from the "List" module:

```ts
import * as List from 'effect/List'

// Can be accessed like this
List.take
```

**Signature**

```ts
export declare const take: { (n: number): <A>(self: List<A>) => List<A>; <A>(self: List<A>, n: number): List<A> }
```

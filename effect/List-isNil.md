# isNil

Returns `true` if the specified value is a `List.Nil<A>`, `false` otherwise.

To import and use `isNil` from the "List" module:

```ts
import * as List from 'effect/List'

// Can be accessed like this
List.isNil
```

**Signature**

```ts
export declare const isNil: <A>(self: List<A>) => self is Nil<A>
```

# isCons

Returns `true` if the specified value is a `List.Cons<A>`, `false` otherwise.

To import and use `isCons` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.isCons
undefined

**Signature**

```ts
export declare const isCons: <A>(self: List<A>) => self is Cons<A>
```

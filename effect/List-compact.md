# compact

Removes all `None` values from the specified list.

To import and use `compact` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.compact
undefined

**Signature**

```ts
export declare const compact: <A>(self: List<Option.Option<A>>) => List<A>
```

# isList

Returns `true` if the specified value is a `List`, `false` otherwise.

To import and use `isList` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.isList
```

**Signature**

```ts
export declare const isList: { <A>(u: Iterable<A>): u is List<A>; (u: unknown): u is List<unknown> }
```

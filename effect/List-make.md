# make

Constructs a new `List<A>` from the specified values.

To import and use `make` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.make
```

**Signature**

```ts
export declare const make: <Elements extends readonly [any, ...any[]]>(...elements: Elements) => Cons<Elements[number]>
```

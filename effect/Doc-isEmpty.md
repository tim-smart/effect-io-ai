# isEmpty

Returns `true` if the specified `Doc` is an `Empty`, `false` otherwise.

To import and use `isEmpty` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <A>(self: Doc<A>) => self is Empty<A>
```

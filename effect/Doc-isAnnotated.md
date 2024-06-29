# isAnnotated

Returns `true` if the specified `Doc` is a `Annotated`, `false` otherwise.

To import and use `isAnnotated` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isAnnotated
```

**Signature**

```ts
export declare const isAnnotated: <A>(self: Doc<A>) => self is Annotated<A>
```

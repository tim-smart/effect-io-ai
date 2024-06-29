# isUnion

Returns `true` if the specified `Doc` is a `Union`, `false` otherwise.

To import and use `isUnion` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isUnion
```

**Signature**

```ts
export declare const isUnion: <A>(self: Doc<A>) => self is Union<A>
```

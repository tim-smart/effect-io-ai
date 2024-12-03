# isChar

Returns `true` if the specified `Doc` is a `Char`, `false` otherwise.

To import and use `isChar` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isChar
```

**Signature**

```ts
export declare const isChar: <A>(self: Doc<A>) => self is Char<A>
```

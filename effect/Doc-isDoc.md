# isDoc

Returns `true` if the specified value is a `Doc`, `false` otherwise.

To import and use `isDoc` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isDoc
undefined

**Signature**

```ts
export declare const isDoc: (u: unknown) => u is Doc<unknown>
```

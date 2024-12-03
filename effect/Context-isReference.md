# isReference

Checks if the provided argument is a `Reference`.

To import and use `isReference` from the "Context" module:

ts
import \* as Context from "effect/Context"
// Can be accessed like this
Context.isReference
undefined

**Signature**

```ts
export declare const isReference: (u: unknown) => u is Reference<any, any>
```

# singleton

Create a non-empty record from a single element.

To import and use `singleton` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.singleton
undefined

**Signature**

```ts
export declare const singleton: <K extends string | symbol, A>(key: K, value: A) => Record<K, A>
```

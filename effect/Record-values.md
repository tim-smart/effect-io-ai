# values

Retrieve the values of a given record as an array.

To import and use `values` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.values
```

**Signature**

```ts
export declare const values: <K extends string, A>(self: ReadonlyRecord<K, A>) => Array<A>
```

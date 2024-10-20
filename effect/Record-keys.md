# keys

Retrieve the keys of a given record as an array.

To import and use `keys` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.keys
```

**Signature**

```ts
export declare const keys: <K extends string | symbol, A>(self: ReadonlyRecord<K, A>) => Array<K & string>
```

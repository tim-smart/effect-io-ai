# singleton

Create a non-empty record from a single element.

To import and use `singleton` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.singleton
```

**Signature**

```ts
export declare const singleton: <K extends string, A>(key: K, value: A) => Record<K, A>
```

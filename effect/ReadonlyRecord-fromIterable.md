# fromIterable

Creates a new record from an iterable collection of key/value pairs.

To import and use `fromIterable` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <V>(entries: Iterable<readonly [string, V]>) => Record<string, V>
```

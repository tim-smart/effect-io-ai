# every

Check if all entries in a record meet a specific condition.

To import and use `every` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.every
```

**Signature**

```ts
export declare const every: {
  <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: Record<K, A>) => boolean
  <K extends string, A>(self: Record<K, A>, predicate: (value: A, key: K) => boolean): boolean
}
```

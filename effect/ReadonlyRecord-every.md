# every

Check if all entries in a record meet a specific condition.

To import and use `every` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.every
```

**Signature**

```ts
export declare const every: {
  <A, K extends string, B extends A>(
    refinement: (value: A, key: K) => value is B
  ): (self: ReadonlyRecord<K, A>) => self is ReadonlyRecord<K, B>
  <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: ReadonlyRecord<K, A>) => boolean
  <A, K extends string, B extends A>(
    self: ReadonlyRecord<K, A>,
    refinement: (value: A, key: K) => value is B
  ): self is ReadonlyRecord<K, B>
  <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (value: A, key: K) => boolean): boolean
}
```

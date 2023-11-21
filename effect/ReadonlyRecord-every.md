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
  ): (self: Record<K, A>) => self is Readonly<Record<K, B>>
  <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: Record<K, A>) => boolean
  <A, K extends string, B extends A>(
    self: Record<K, A>,
    refinement: (value: A, key: K) => value is B
  ): self is Readonly<Record<K, B>>
  <K extends string, A>(self: Record<K, A>, predicate: (value: A, key: K) => boolean): boolean
}
```

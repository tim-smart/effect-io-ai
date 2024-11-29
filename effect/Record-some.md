# some

Check if any entry in a record meets a specific condition.

To import and use `some` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.some
undefined

**Signature**

```ts
export declare const some: {
  <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: ReadonlyRecord<K, A>) => boolean
  <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (value: A, key: K) => boolean): boolean
}
```

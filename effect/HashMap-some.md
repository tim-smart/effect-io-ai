# some

Checks if any entry in a hashmap meets a specific condition.

To import and use `some` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.some
```

**Signature**

```ts
export declare const some: {
  <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => boolean
  <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): boolean
}
```

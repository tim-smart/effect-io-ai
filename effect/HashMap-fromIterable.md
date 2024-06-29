# fromIterable

Creates a new `HashMap` from an iterable collection of key/value pairs.

To import and use `fromIterable` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <K, V>(entries: Iterable<readonly [K, V]>) => HashMap<K, V>
```

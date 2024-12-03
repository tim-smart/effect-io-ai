# make

Constructs a new `HashMap` from an array of key/value pairs.

To import and use `make` from the "HashMap" module:

```ts
import * as HashMap from "effect/HashMap"
// Can be accessed like this
HashMap.make
```

**Signature**

```ts
export declare const make: <Entries extends ReadonlyArray<readonly [any, any]>>(
  ...entries: Entries
) => HashMap<
  Entries[number] extends readonly [infer K, any] ? K : never,
  Entries[number] extends readonly [any, infer V] ? V : never
>
```

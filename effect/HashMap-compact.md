# compact

Filters out `None` values from a `HashMap` of `Options`s.

To import and use `compact` from the "HashMap" module:

```ts
import * as HashMap from 'effect/HashMap'

// Can be accessed like this
HashMap.compact
```

**Signature**

```ts
export declare const compact: <K, A>(self: HashMap<K, Option<A>>) => HashMap<K, A>
```

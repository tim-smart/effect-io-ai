# has

Checks if the specified value exists in the `HashSet`.

To import and use `has` from the "HashSet" module:

```ts
import * as HashSet from '@effect/data/HashSet'

// Can be accessed like this
HashSet.has
```

**Signature**

```ts
export declare const has: { <A>(value: A): (self: HashSet<A>) => boolean; <A>(self: HashSet<A>, value: A): boolean }
```

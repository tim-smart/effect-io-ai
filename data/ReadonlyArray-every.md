# every

Check if a predicate holds true for every `Iterable` member.

To import and use `every` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.every
```

**Signature**

```ts
export declare const every: {
  <A>(predicate: Predicate<A>): (self: Iterable<A>) => boolean
  <A>(self: Iterable<A>, predicate: Predicate<A>): boolean
}
```

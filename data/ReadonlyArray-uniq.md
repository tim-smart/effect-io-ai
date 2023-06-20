# uniq

Remove duplicates from am `Iterable`, keeping the first occurrence of an element.

To import and use `uniq` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.uniq
```

**Signature**

```ts
export declare const uniq: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): A[]
}
```

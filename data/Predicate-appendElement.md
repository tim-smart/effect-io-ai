# appendElement

This function appends a predicate to a tuple-like predicate, allowing you to create a new predicate that includes
the original elements and the new one.

To import and use `appendElement` from the "Predicate" module:

```ts
import * as Predicate from '@effect/data/Predicate'

// Can be accessed like this
Predicate.appendElement
```

**Signature**

```ts
export declare const appendElement: {
  <A extends readonly any[], B>(self: Predicate<A>, that: Predicate<B>): Predicate<readonly [...A, B]>
  <B>(that: Predicate<B>): <A extends readonly any[]>(self: Predicate<A>) => Predicate<readonly [...A, B]>
}
```

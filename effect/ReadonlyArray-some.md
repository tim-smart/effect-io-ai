# some

Check if a predicate holds true for some `ReadonlyArray` element.

To import and use `some` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): <B extends A>(self: readonly B[]) => self is readonly [B, ...B[]]
  <B extends A, A = B>(self: readonly B[], predicate: Predicate<A>): self is readonly [B, ...B[]]
}
```

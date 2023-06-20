# intersperse

Places an element in between members of an `Iterable`

To import and use `intersperse` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.intersperse
```

**Signature**

```ts
export declare const intersperse: {
  <B>(middle: B): <A>(self: Iterable<A>) => (B | A)[]
  <A, B>(self: Iterable<A>, middle: B): (A | B)[]
}
```

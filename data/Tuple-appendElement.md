# appendElement

Appends an element to the end of a tuple.

To import and use `appendElement` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.appendElement
```

**Signature**

```ts
export declare const appendElement: {
  <B>(that: B): <A extends readonly unknown[]>(self: A) => [...A, B]
  <A extends readonly unknown[], B>(self: A, that: B): [...A, B]
}
```

# zipWith

Zips this exit together with that exit using the specified combination
functions.

To import and use `zipWith` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <E, E2, A, B, C>(
    that: Exit<E2, B>,
    f: (a: A, b: B) => C,
    g: (cause: Cause.Cause<E>, cause2: Cause.Cause<E2>) => Cause.Cause<E | E2>
  ): (self: Exit<E, A>) => Exit<E | E2, C>
  <E, E2, A, B, C>(
    self: Exit<E, A>,
    that: Exit<E2, B>,
    f: (a: A, b: B) => C,
    g: (cause: Cause.Cause<E>, cause2: Cause.Cause<E2>) => Cause.Cause<E | E2>
  ): Exit<E | E2, C>
}
```

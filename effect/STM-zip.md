# zip

Sequentially zips this value with the specified one.

To import and use `zip` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.zip
```

**Signature**

```ts
export declare const zip: {
  <R1, E1, A1>(that: STM<R1, E1, A1>): <R, E, A>(self: STM<R, E, A>) => STM<R1 | R, E1 | E, readonly [A, A1]>
  <R, E, A, R1, E1, A1>(self: STM<R, E, A>, that: STM<R1, E1, A1>): STM<R | R1, E | E1, readonly [A, A1]>
}
```

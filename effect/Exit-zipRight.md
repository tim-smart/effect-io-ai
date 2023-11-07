# zipRight

Sequentially zips the this result with the specified result discarding the
first element of the tuple or else returns the failed `Cause<E | E2>`.

To import and use `zipRight` from the "Exit" module:

```ts
import * as Exit from 'effect/Exit'

// Can be accessed like this
Exit.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <E2, A2>(that: Exit<E2, A2>): <E, A>(self: Exit<E, A>) => Exit<E2 | E, A2>
  <E, A, E2, A2>(self: Exit<E, A>, that: Exit<E2, A2>): Exit<E | E2, A2>
}
```

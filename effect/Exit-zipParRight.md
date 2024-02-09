# zipParRight

Parallelly zips the this result with the specified result discarding the
first element of the tuple or else returns the failed `Cause<E | E2>`.

To import and use `zipParRight` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.zipParRight
```

**Signature**

```ts
export declare const zipParRight: {
  <A2, E2>(that: Exit<A2, E2>): <A, E>(self: Exit<A, E>) => Exit<A2, E2 | E>
  <A, E, A2, E2>(self: Exit<A, E>, that: Exit<A2, E2>): Exit<A2, E | E2>
}
```

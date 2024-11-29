# zipPar

Parallelly zips the this result with the specified result or else returns
the failed `Cause<E | E2>`.

To import and use `zipPar` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.zipPar
undefined

**Signature**

```ts
export declare const zipPar: {
  <A2, E2>(that: Exit<A2, E2>): <A, E>(self: Exit<A, E>) => Exit<[A, A2], E2 | E>
  <A, E, A2, E2>(self: Exit<A, E>, that: Exit<A2, E2>): Exit<[A, A2], E | E2>
}
```

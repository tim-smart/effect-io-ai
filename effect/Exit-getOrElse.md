# getOrElse

Returns the `A` if specified exit is a `Success`, otherwise returns the
alternate `A` value computed from the specified function which receives the
`Cause<E>` of the exit `Failure`.

To import and use `getOrElse` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.getOrElse
undefined

**Signature**

```ts
export declare const getOrElse: {
  <E, A2>(orElse: (cause: Cause.Cause<E>) => A2): <A>(self: Exit<A, E>) => A2 | A
  <A, E, A2>(self: Exit<A, E>, orElse: (cause: Cause.Cause<E>) => A2): A | A2
}
```

# getOrElse

Returns the `A` if specified exit is a `Success`, otherwise returns the
alternate `A` value computed from the specified function which receives the
`Cause<E>` of the exit `Failure`.

To import and use `getOrElse` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.getOrElse
```

**Signature**

```ts
export declare const getOrElse: {
  <E, A>(orElse: (cause: Cause.Cause<E>) => A): (self: Exit<E, A>) => A
  <E, A>(self: Exit<E, A>, orElse: (cause: Cause.Cause<E>) => A): A
}
```
